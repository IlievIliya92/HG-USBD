#include <stdio.h>
#include <math.h>

#include "usbdrv_format.h"

static int UsbDrv_FormatIntToStr(int x, char str[], int d);
static void Ubdrv_Reverse(char *str, int len);

// Converts a floating point number to string.
void Ubdrv_Ftoa(float n, char *res, int afterpoint)
{
    int ipart = (int)n;
    float fpart = n - (float)ipart;
    int i = UsbDrv_FormatIntToStr(ipart, res, 0);

    if (afterpoint != 0)
    {
        res[i] = '.';
        fpart = fpart * pow(10, afterpoint);

        UsbDrv_FormatIntToStr((int)fpart, res + i + 1, afterpoint);
    }

    return;
}

static void Ubdrv_Reverse(char *str, int len)
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

static int UsbDrv_FormatIntToStr(int x, char str[], int d)
{
    int i = 0;

    while (x)
    {
        str[i++] = (x%10) + '0';
        x = x/10;
    }

    while (i < d)
        str[i++] = '0';
    Ubdrv_Reverse(str, i);
    str[i] = '\0';

    return i;
}