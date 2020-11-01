#include "Arduino.h"
#include "tpl_os.h"
#include "tpl_app_config.h"

extern bool is_time_expired; /* defined in task.cpp */

ALARMCALLBACK(ALARMStopDisplay) {
        is_time_expired = true;
};