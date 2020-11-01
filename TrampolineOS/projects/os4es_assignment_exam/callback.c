#include "Arduino.h"
#include "tpl_os.h"
#include "tpl_app_config.h"

extern bool is_time_expired; /* defined in task.cpp */

void ALARMStopDisplay_callback(void) {
	is_time_expired = false;
    digitalWrite(13, digitalRead(13) ^ 1);
}