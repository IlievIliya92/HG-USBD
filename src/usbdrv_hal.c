/*
 * usbdrv_hal.c
 *
 *  Created on: Feb 3, 2019
 *      Author: Chicho ti Ilko
 */
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

static const char * frame_trailer = "k\n\r";

Usb_Frame_Ptr UsbDrv_CreateFrame (void)
{
    Usb_Frame_Ptr _usb_frame = NULL;

	_usb_frame = (Usb_Frame_Ptr)malloc(sizeof(Usb_Frame));
	if (_usb_frame == NULL)
	{
	  perror("Memory allocation has failed!");
	  return NULL;
	}

	return _usb_frame;
}


void UsbDrv_DestroyFrame (Usb_Frame_Ptr _usb_frame)
{
    if (_usb_frame != NULL)
    	free(_usb_frame);

	return;
}

int UsbDrv_EncapsulateData(Usb_Frame_Ptr  _usb_frame,
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

void UsbDrv_SendData(Usb_Frame_Ptr frame)
{
  INT_Disable();

  /* usbTxActive = false means that a new USB packet can be transferred. */
  //  usbTxActive = true;
    USBD_Write(CDC_EP_DATA_IN, (void*) frame->data,
               frame->frame_len, NULL);

  INT_Enable();
}


