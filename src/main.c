/**************************************************************************//**
 * @file main.c
 * @brief USB CDC Serial Port adapter example project.
 * @version 4.4.0
 ******************************************************************************
 * @section License
 * <b>Copyright 2016 Silicon Laboratories, Inc. http://www.silabs.com</b>
 *******************************************************************************
 *
 * This file is licensed under the Silabs License Agreement. See the file
 * "Silabs_License_Agreement.txt" for details. Before using this software for
 * any purpose, you must agree to the terms of that agreement.
 *
 ******************************************************************************/
#include <stdlib.h>
#include <string.h>

#include "em_device.h"
#include "em_chip.h"
#include "em_cmu.h"

#include "em_usb.h"
#include "cdc.h"
#include "descriptors.h"
#include "display.h"
#include "scrolllcd.h"
#include "image.h"

#include "usbdrv_hal.h"

/* Defines */
#define DEFAULT_CHANNEL 	1

/* Local Functions */
static void StateChange( USBD_State_TypeDef oldState,
                         USBD_State_TypeDef newState );

/* Local Variables */
static const USBD_Callbacks_TypeDef callbacks =
{
  .usbReset        = NULL,
  .usbStateChange  = StateChange,
  .setupCmd        = CDC_SetupCmd,
  .isSelfPowered   = NULL,
  .sofInt          = NULL
};

static const USBD_Init_TypeDef usbInitStruct =
{
  .deviceDescriptor    = &USBDESC_deviceDesc,
  .configDescriptor    = USBDESC_configDesc,
  .stringDescriptors   = USBDESC_strings,
  .numberOfStrings     = sizeof(USBDESC_strings)/sizeof(void*),
  .callbacks           = &callbacks,
  .bufferingMultiplier = USBDESC_bufferingMultiplier,
  .reserved            = 0
};

static DISPLAY_Device_t displayDevice;            /* Display device handle. */
static volatile scrollDirection_t scrollDisplay;
static char blankImage[ 128 * 16 ];

/**************************************************************************//**
 * @brief main - the entrypoint after reset.
 *****************************************************************************/
int main(void)
{
  char const *currentImage, *nextImage;
#if 0
  Usb_Frame_Ptr usb_frame = NULL;

  usb_frame = (Usb_Frame_Ptr)malloc(sizeof(Usb_Frame));
  if (usb_frame == NULL)
  {
	  perror("Memory allocation has failed!");
	  goto bail0;
  }
#endif

  Usb_Frame_Ptr usb_frame = NULL;

  usb_frame = UsbDrv_CreateFrame();

  usb_frame = UsbDrv_CreateFrame();
  /* Dynamic message_len */
  char *message = " HOI!";
  int message_len = strlen(message);

  usb_frame->data_len = message_len + 2;
  usb_frame->data = (char *)malloc(sizeof(char) * (message_len + 2));
  if (usb_frame->data == NULL)
  {
	  perror("Memory allocation has failed!");
	  goto bail1;
  }
  usb_frame->channel = DEFAULT_CHANNEL;

  strcpy(usb_frame->data, message);
  strcat(usb_frame->data, "\n\r");

  /* Transfer message to the USB */
 // strcpy(usb_frame->data, message);
//  strcat();

  /* Chip errata */
  CHIP_Init();

  CMU_ClockSelectSet( cmuClock_HF, cmuSelect_HFXO );

  /* Initialize the display module. */
  DISPLAY_Init();

  /* Retrieve the properties of the display. */
  if ( DISPLAY_DeviceGet( 0, &displayDevice ) != DISPLAY_EMSTATUS_OK )
  {
    /* Unable to get display handle. */
    while( 1 );
  }

  memset( (void*)blankImage, 0xFF, 128*16 );
  displayDevice.pPixelMatrixDraw( &displayDevice, (void*)blankImage,
                                  /* start coloumn, width */
                                  0, displayDevice.geometry.width,
                                  /* start row, height */
                                  0, displayDevice.geometry.height);
  scrollDisplay = scrollOff;

  /* Initialize the communication class device. */
  CDC_Init();

  /* Initialize and start USB device stack. */
  USBD_Init(&usbInitStruct);

  /*
   * When using a debugger it is practical to uncomment the following three
   * lines to force host to re-enumerate the device.
   */
  /*USBD_Disconnect();         */
  /*USBTIMER_DelayMs(1000);    */
  /*USBD_Connect();            */

  scrollLcd( &displayDevice, scrollLeft, blankImage, usbDisconnectedImage );
  currentImage = usbDisconnectedImage;

  for (;;)
  {
    if ( scrollDisplay != scrollOff )
    {
      if (USBD_GetUsbState() == USBD_STATE_CONFIGURED)
      {
        nextImage = usbConnectedImage;
      }
      else
      {
        nextImage = usbDisconnectedImage;
      }

      scrollLcd( &displayDevice, scrollDisplay, currentImage, nextImage );
      scrollDisplay = scrollOff;
      currentImage = nextImage;
    }

    UsbDrv_SendData(usb_frame);

  }

  free(usb_frame->data);
bail1:
  free(usb_frame);
bail0:
  return 0;
}

static void StateChange(USBD_State_TypeDef oldState,
                        USBD_State_TypeDef newState)
{
  /* Call CDC driver state change event handler. */
  CDC_StateChangeEvent( oldState, newState );

  if ( newState == USBD_STATE_CONFIGURED )
  {
    if ( scrollDisplay == scrollOff )
    {
      scrollDisplay = scrollUp;
    }
  }

  else if ( ( oldState == USBD_STATE_CONFIGURED ) &&
            ( newState == USBD_STATE_SUSPENDED  )    )
  {
    if ( scrollDisplay == scrollOff )
    {
      scrollDisplay = scrollDown;
    }
  }
}
