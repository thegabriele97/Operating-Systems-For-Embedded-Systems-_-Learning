/*
  main.cpp - Based on main.cpp for Arduino
  Removed the loop, and call StartOS() instead.
  Copyright (c) 2005-2013 Arduino Team.  All right reserved.

  This library is free software; you can redistribute it and/or
  modify it under the terms of the GNU Lesser General Public
  License as published by the Free Software Foundation; either
  version 2.1 of the License, or (at your option) any later version.

  This library is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
  Lesser General Public License for more details.

  You should have received a copy of the GNU Lesser General Public
  License along with this library; if not, write to the Free Software
  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

#include <Arduino.h>
// START TRAMPOLINE SECTION 
#include "tpl_os_os.h" //AppModeType, OSDEFAULTAPPMODE
extern "C" {
	void tpl_init_external_interrupts();
}
// STOP TRAMPOLINE SECTION 

// Declared weak in Arduino.h to allow user redefinitions.
int atexit(void (* /*func*/ )()) { return 0; }

// Weak empty variant initialization function.
// May be redefined by variant files.
void initVariant() __attribute__((weak));
void initVariant() { }

void setupUSB() __attribute__((weak));
void setupUSB() { }

// START TRAMPOLINE SECTION 
static AppModeType __appMode = OSDEFAULTAPPMODE;

/** insert a 'new' service to define the application mode
 * for Arduino, as the StartOS() service is hidden
 */
void SetAppMode(AppModeType appMode)
{
	__appMode = appMode;
}
// STOP TRAMPOLINE SECTION 

int main(void)
{
	init();

	initVariant();

#if defined(USBCON)
	USBDevice.attach();
#endif
	
// START TRAMPOLINE SECTION 
	tpl_init_external_interrupts();
// STOP TRAMPOLINE SECTION 
	setup();
    
// START TRAMPOLINE SECTION 
    StartOS(__appMode);
// STOP TRAMPOLINE SECTION
// START REMOVE TRAMPOLINE SECTION 
//	for (;;) {
//		loop();
//		if (serialEventRun) serialEventRun();
//	} 
// STOP REMOVE TRAMPOLINE SECTION 
        
	return 0;
}

