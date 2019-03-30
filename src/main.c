/*****************************************************************************
 * @file main.c
 * @brief USB CDC Serial Communicaction.
 * @version 1.1.0
 ******************************************************************************
 ******************************************************************************/

/******************************** Includes*****************************/
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <math.h>

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

/******************************* Defines *****************************/
#define MESSAGE_QUE_LENGTH		3
#define TIME_BUFF             20

/**************************** Local Functions ************************/
static void StateChange( USBD_State_TypeDef oldState,
                         USBD_State_TypeDef newState );

/***************************** Local Variables ***********************/
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
  int message_len = 0;
  char const *currentImage, *nextImage;
  /* Dynamic message_len */
  char *message[MESSAGE_QUE_LENGTH] = {"INIT USBD - Successful",
		  	  	  	  	  	  	  	       "TEST Connection: Passed",
  	  	  	  	  	  	  	  	  	   "-"};
  char time[TIME_BUFF];

  memset(time, 0x00, TIME_BUFF);

  Usb_Frame_Ptr usb_frame = NULL;
  int i = 0;

  /* Create Usb_Frame Storage*/
  usb_frame = UsbDrv_CreateFrame();
  if (usb_frame == NULL)
  {
	  goto bail0;
  }

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
  USBD_Disconnect();
  USBTIMER_DelayMs(1000);
  USBD_Connect();

  scrollLcd( &displayDevice, scrollLeft, blankImage, usbDisconnectedImage );
  currentImage = usbDisconnectedImage;

  USBTIMER_DelayMs(1000);

  /* Display Init Message */
  for (i = 0; i < MESSAGE_QUE_LENGTH; i++)
  {
	  message_len = strlen(message[i]);
  	  UsbDrv_Transmit(usb_frame, message[i], message_len, DEFAULT_CHANNEL);
  }

  UsbDrv_Transmit_Time(20, 20, 10, time, TIME_BUFF,
                       usb_frame , DEFAULT_CHANNEL);

  UsbDrv_Transmit_Humidity(20.123, usb_frame, DEFAULT_CHANNEL);


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
  }

	UsbDrv_DestroyFrame(usb_frame);
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
