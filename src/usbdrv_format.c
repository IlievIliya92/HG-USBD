#include <stdio.h>
#include <math.h>
#include <string.h>

#include "usbdrv_format.h"

/********************************* Defines *****************************/
#define TIME_BUFF             10
#define HUMIDITY_BUFF         6
#define HUMIDITY_BUFF_F_P     2
#define TEMP_BUFF             6
#define TEMP_BUFF_F_P         2

/********************************* Global Variables *****************************/
static char formated_output_data[100];

/**************************** Local Functions ************************/
static int UsbDrv_Format_IntToStr(int x, char str[], int d);
static void UsbDrv_Format_Reverse(char *str, int len);
static void Usbdrv_Format_Ftoa(float n, char *res, int afterpoint);

/**************************** Global Functions ************************/
/*
 * YY,MM,DD,HH,MM,SS,TT.TT,HH.HH
 */
char * UsbDrv_Format_FormatOutputData(Out_Data output_data)
{
    char time[TIME_BUFF];
    char time_year[TIME_BUFF];
    char humidity_str[HUMIDITY_BUFF];
    char temp_str[HUMIDITY_BUFF];

    memset(time, 0x00, TIME_BUFF);
    memset(time_year, 0x00, TIME_BUFF);
    memset(humidity_str, 0x00, HUMIDITY_BUFF);
    memset(temp_str, 0x00, TEMP_BUFF);

    memset(formated_output_data, 0x00, 100);

    /* Add time to the output */
    sprintf(time_year, "%d:%d:%d,", output_data.year, output_data.month, output_data.day);
    strcat(formated_output_data, time_year);

    /* Add time to the output */
    sprintf(time, "%d:%d:%d,", output_data.hour, output_data.minute, output_data.second);
    strcat(formated_output_data, time);

    Usbdrv_Format_Ftoa(output_data.temp, temp_str, TEMP_BUFF_F_P);
    strcat(formated_output_data, temp_str);
    strcat(formated_output_data, ",");

    Usbdrv_Format_Ftoa(output_data.humidity, humidity_str, HUMIDITY_BUFF_F_P);
    strcat(formated_output_data, humidity_str);

    return formated_output_data;
}

Out_Data UsbDrv_Format_PackData(int year, int month, int day,
                                int hour, int minute, int second,
                                float temp, float humidity)
{
    Out_Data _out_data;

    _out_data.year = year;
    _out_data.month = month;
    _out_data.day = day;
    _out_data.hour = hour;
    _out_data.minute = minute;
    _out_data.second = second;
    _out_data.temp = temp;
    _out_data.humidity = humidity;

    return _out_data;
}

/**************************** Local Function ***************************/
// Converts a floating point number to string.
static void Usbdrv_Format_Ftoa(float n, char *res, int afterpoint)
{
    int ipart = (int)n;
    float fpart = n - (float)ipart;
    int i = UsbDrv_Format_IntToStr(ipart, res, 0);

    if (afterpoint != 0)
    {
        res[i] = '.';
        fpart = fpart * pow(10, afterpoint);
        UsbDrv_Format_IntToStr((int)fpart, res + i + 1, afterpoint);
    }

    return;
}

/**************************** Local Function ***************************/
static void UsbDrv_Format_Reverse(char *str, int len)
{
    int i=0, j=len-1, temp;
    while (i<j)
    {
        temp = str[i];
        str[i] = str[j];
        str[j] = temp;
        i++; j--;
    }

    return;
}

/**************************** Local Function ***************************/
static int UsbDrv_Format_IntToStr(int x, char str[], int d)
{
    int i = 0;

    while (x)
    {
        str[i++] = (x%10) + '0';
        x = x/10;
    }

    while (i < d)
        str[i++] = '0';
    UsbDrv_Format_Reverse(str, i);
    str[i] = '\0';

    return i;
}
