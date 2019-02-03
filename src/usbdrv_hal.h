/*
 * usbdrv_hal.h
 *
 *  Created on: Feb 3, 2019
 *      Author: Chico ti Ilko
 */

#ifndef USBDRV_HAL_H_
#define USBDRV_HAL_H_

#define TRAILER_SIZE		2
#define HEADER_SIZE			0
#define DEFAULT_CHANNEL 	1

typedef struct usb_frame
{
   char *data;
   int frame_len;
   int channel;
}Usb_Frame, *Usb_Frame_Ptr;

void UsbDrv_SendData(Usb_Frame_Ptr frame);
Usb_Frame_Ptr UsbDrv_CreateFrame (void);
int UsbDrv_EncapsulateData(Usb_Frame_Ptr _usb_frame, int message_len, char * message);


#endif /* USBDRV_HAL_H_ */
