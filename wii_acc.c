#include <stdlib.h>

#include <wii_acc.h>

#define LOG_TAG "wiid_input"
#define LOG_NDEBUG 0
#include <cutils/log.h>

void handle_accelerometer(uint8_t x, uint8_t y, uint8_t z)
{
	LOGV("Acc message [%d, %d, %d]\n", x, y, z);
}


