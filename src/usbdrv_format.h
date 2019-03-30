/*
 * usbdrv_format.h
 *
 *  Created on: Feb 3, 2019
 *      Author: Chico ti Ilko
 */

#ifndef USBDRV_FORMAT_H_
#define USBDRV_FORMAT_H_

/*
 * YY,MM,DD,HH,MM,SS,TT.TT,HH.HH
 */
typedef struct out_data
{
   int year;
   int month;
   int day;
   int hour;
   int minute;
   int second;
   float temp;
   float humidity;
}Out_Data, *Out_Data_Ptr;

char * UsbDrv_Format_FormatOutputData(Out_Data output_data);
Out_Data UsbDrv_Format_PackData(int year, int month, int day,
                         int hour, int minute, int second,
                         float temp, float humidity);

#endif /* USBDRV_HAL_H_ */
