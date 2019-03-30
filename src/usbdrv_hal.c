/*
 * usbdrv_hal.c
 *
 *  Created on: Feb 3, 2019
 *      Author: Chicho ti Ilko
 */

/******************************** Includes*****************************/
#include <stdlib.h>
#include <string.h>

#include "em_device.h"
#include "em_common.h"
#include "em_cmu.h"
#include "em_dma.h"
#include "em_gpio.h"
#include "em_usart.h"
#include "em_usb.h"
#include "bsp.h"
#include "dmactrl.h"
#include "cdc.h"

#include "usbdrv_hal.h"
#include "usbdrv_format.h"

/********************************* Defines *****************************/
/* Calculate a timeout in ms corresponding to 5 char times on current     */
/* baudrate. Minimum timeout is set to 10 ms.                             */
#define CDC_RX_TIMEOUT     5
#define BUFFERSIZE         2

#define TIME_UNITS              3
#define CHARS_PER_TIME_UNIT     2
#define DELIM                   ":"

#define OUTPUT_DATA_SIZE      100
#define TIME_BUFF             20
#define HUMIDITY_BUFF         20
#define HUMIDITY_BUFF_F_P     4

/********************************* Global Variables *****************************/
EFM32_ALIGN(4);
STATIC_UBUF( TransmitBuffer , BUFFERSIZE*257);

static bool           usbTxActive = true;
static uint32_t       LastUsbTxCnt = 0;
static USB_Status_TypeDef status;
static const char * frame_trailer = "\n\r";

/**************************** Local Functions ************************/
static int UsbDataTransmitted(USB_Status_TypeDef status,
							  uint32_t xferred,
							  uint32_t remaining);

static int UsbDrv_EncapsulateData(Usb_Frame_Ptr _usb_frame,
						   	   	  char * message, int message_len, int channel);

static int UsbDrv_SendData(Usb_Frame_Ptr frame);
static void UsbDrv_FreeData (Usb_Frame_Ptr _usb_frame);


/**************************** Global Functions ************************/
int UsbDrv_Transmit_Output_Data(int year, int month, int day,
                                int hour, int minute, int second,
                                float temp, float humidity,
                                Usb_Frame_Ptr _usb_frame, int channel)
{
    Out_Data output_data = {0};
    char * formated_output_data = NULL;

    output_data = UsbDrv_Format_PackData(year, month, day,
                                         hour, minute, second,
                                         temp, humidity);

    formated_output_data = UsbDrv_Format_FormatOutputData(output_data);

    status = UsbDrv_Transmit(_usb_frame, formated_output_data, OUTPUT_DATA_SIZE, channel);
    return status;
}

Usb_Frame_Ptr UsbDrv_CreateFrame(void)
{
    Usb_Frame_Ptr _usb_frame = NULL;

	_usb_frame = (Usb_Frame_Ptr)malloc(sizeof(Usb_Frame));
	if (_usb_frame == NULL)
	{
	  perror("Memory allocation has failed!");
	  return NULL;
	}

    /* Initialize the usb_frame object */
   _usb_frame->data      = NULL;
   _usb_frame->frame_len = 0;
   _usb_frame->channel   = 0;

	return _usb_frame;
}

void UsbDrv_DestroyFrame (Usb_Frame_Ptr _usb_frame)
{
    if (_usb_frame != NULL)
    	free(_usb_frame);

	return;
}

int UsbDrv_Transmit(Usb_Frame_Ptr _usb_frame,
					char * message, int message_len, int channel)
{
	int status = -1;

	status = UsbDrv_EncapsulateData(_usb_frame, message, message_len, DEFAULT_CHANNEL);
    if (0 != status)
    {
    	perror("Failed to encapsulate data!\n");
    	goto bail;
    }

    status = UsbDrv_SendData(_usb_frame);
    if (status != USB_STATUS_OK)
    {
    	perror("Failed to send data!\n");
    }

    UsbDrv_FreeData(_usb_frame);
bail:
    return status;
}

/**************************** Local Function ***************************/
static int UsbDrv_EncapsulateData(Usb_Frame_Ptr _usb_frame,
								  char * message, int message_len, int channel)
{
	int ret = 0;
	int frame_len = 0;

	 /* Validate parameters */
	if ((message_len == 0) && (message == NULL))
	{
		  perror("Failed to validate parameters!");
		  ret = -1;
	}

	frame_len = (TRAILER_SIZE + strlen(message));
	_usb_frame->frame_len = frame_len;
    _usb_frame->channel = channel;
	_usb_frame->data = (char *)malloc(sizeof(char) * frame_len);
	if (_usb_frame->data == NULL)
	{
	  perror("Memory allocation has failed!");
	  ret = -1;
	  goto bail;
	}

    strcpy(_usb_frame->data, message);
	strcat(_usb_frame->data, frame_trailer);

bail:
	return ret;
}

/**************************** Local Function ***************************/
static int UsbDrv_SendData(Usb_Frame_Ptr frame)
{
    memcpy(TransmitBuffer, frame->data, frame->frame_len);
    free(frame->data);

    INT_Disable();

    if (usbTxActive)
    {
        status = USBD_Write(CDC_EP_DATA_IN, (void*) TransmitBuffer,
                   frame->frame_len, UsbDataTransmitted);
        LastUsbTxCnt = frame->frame_len;

        USBTIMER_Start(0, 1, NULL);
    }
    else
    {
    	 usbTxActive = false;
         USBTIMER_Stop(CDC_TIMER_ID);
    }

    INT_Enable();

    return status;
}

/**************************** Local Function ***************************/
static int UsbDataTransmitted(USB_Status_TypeDef status,
							  uint32_t xferred,
							  uint32_t remaining)
{
	if (LastUsbTxCnt != xferred) {
		return USB_STATUS_EP_ERROR;
	} else {
		usbTxActive = true;
	}

	return USB_STATUS_OK;
}

/**************************** Local Function ***************************/
static void UsbDrv_FreeData (Usb_Frame_Ptr _usb_frame)
{
	if (_usb_frame->data != NULL)
		free(_usb_frame->data);

	return;
}
