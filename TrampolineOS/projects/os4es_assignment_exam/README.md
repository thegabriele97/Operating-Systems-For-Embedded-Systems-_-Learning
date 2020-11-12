# Morse-based Twitter 

[![forthebadge made-with-c](https://forthebadge.com/images/badges/made-with-c.svg)](https://www.python.org/) [![ForTheBadge built-with-love](https://ForTheBadge.com/images/badges/built-with-love.svg)](https://GitHub.com/Naereen/)

[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://GitHub.com/Naereen/ama) [![GPL license](https://img.shields.io/badge/License-GPL-blue.svg)](http://perso.crans.org/besson/LICENSE.html) [![Open Source? Yes!](https://badgen.net/badge/Open%20Source%20%3F/Yes%21/blue?icon=github)](https://github.com/Naereen/badges/) 



*An example of real time application for Embedded Systems*

*Developed by La Greca Salvatore Gabriele (@thegabriele97)*

***

The “Morse-based twitter” is an example of a real time application for Embedded Systems. 

The behaviour of **this application is implemented using TrampolineOS**, an open-source implementation of the OSEK/VDX real time operating system. 

TrampolineOS supports different kind of real hardware solutions and, for this situation, **I choose to develop, run and test it on an Arduino Nano** (that has on board the same microcontroller of the Arduino UNO, the one officially supported by this implementation of the RTOS).
Because of this choice (regarding the work on a real hardware and not only via software), the source code contains some elements that are hardware-dependent. I had, in fact, to manage LEDs and there are some serial output strings for debugging purpose.

## An overview of the implemented architecture

In order to satisfy correctly the requested behaviour of the application, the first thing to do is to organize a suitable architecture that can describe it correctly.

Thanks to the OIL file (that in an OSEK/VDX RTOS it’s used as preliminary configuration of the Operating System), I can setup the **general architecture of the implementation**. The most important elements specified in this file are one Task, three Alarms and two Events.

The single Task is:
* **TaskTwitterer**: it is an endless-loop tasks that manages inter-messages pause and the right message to display. For each message, it calls a function that manages the selected message such as conversion to morse code, display timing, bit timing, inter-bit pauses and so on and so forth. 
It continuously check if the *end flag* is set or if reached the end of the message. If it is, the control is returned to *TaskTwitterer*.

The three Alarms are:
* **StopDisplay**: after 180 seconds since its activation, a callback is called whose action is to properly set the *end flag* variable.
* **BitTiming**: each 100 ms it fires the event *EVTBitTiming* used for bit timing.
* **MsgPause**: activated when the function that manages the message returns. After 0.5 second since its activation, the event *EVTMsgPause* is fired up.

The source code is divided into different parts:
* **code.cpp**: contains routines for setting up the system like serial port baud rate, the pin to use in order to drive the led and so on and so forth. Declares the array of messages to display and other useful variables.
* **task.cpp**: contains the main task routine. Here we have the core of the application.
* **callback.cpp**: meant to store callbacks’ code, in this project we have only one callback and its code is described here.
* **comm_fnct.h**: header file that contains all the main macros, type definitions and useful function declarations.
* **comm_fnct.cpp**: source code of other functions (different from tasks and callbacks code). Here we found the definition of the function for displaying the message, single bit displaying and the Morse code conversion utility.

## A few details about Alarms and Counters

Regarding the management of the StopDisplay alarm, TrampolineOS for Arduino already contains a definition of a counter called SystemCounter, without the need to specify it in the OIL file. The problem with this thing is that the default maximum value of the counter is the maximum value representable on 16 bits. 

In order to have a count of 180.000 ticks more or less (please refer directly to the source code in order to know exactly how much ticks are needed to count for 180 seconds), we need more than 16 bits of storage for the counter. To resolve this problem, a re-defined SystemCounter is specified with a maximum value on 24 bits that is automatically converted into an uint32_t variable.

Another important aspect to take into account is the duration of a tick. In fact, according to TrampolineOS documentation, for an Alarm based on SystemCounter a duration of 1000 ticks is equal to 1024 ms. For this way, a properly manual conversion needs to be made in order to set correctly the various constant values described in the source code.

This is due to the use of Timer0_OVF interrupt, based on the main Arduino uno’s timer. By default it’s set with a prescaler of 64. The internal clock is 16 Mhz and Timer0 is based on a register of 8 bits. This means that we count up from 0 to 255 with a frequency of 250 Khz. Each 1024 us we have an interrupt on Timer0_OVF. It’s better to not change this configuration because it’s the same time used by other predefined Arduino function like millis() and micros().

## Task synchronization and events timing

The task synchronization and all the application timing are accomplished through the use of Events that can be set either by Tasks or by Alarms. In order to have a correct timing and avoid time drifts, all the Alarms that manage those Events are restarted before taking a specific action that uses that specific event linked to that alarm. This restart is done during specific portion of the program, in this way the impact on the overall performance are negible (<< 1 ms).

## The serial port

The serial port is configured, so it’s possible to use it in order to give a look into the actions that the program is doing. To be more precisely, the output of the serial port describes which message is under work and how much time it takes.

This is mainly used for debug purpose and to check if the system is working correctly. To enable It, please add the option “CFLAGS = "-D DEBUG"” in the OIL file. Please note that with this option enabled, the overall size of the program will be larger.

## Memory occupation

The compiled program is not too much big. From a static analysis, the code is large about 7.76 KB and data (that is loaded into RAM during the boot) is large about 0.92 KB (this can be different depends on the compiler used or if there is a change on the source code but approximately this is the correct value). The code is stored in the Arduino UNO’s 32 KB flash memory.

A particular attention was demanded to RAM occupation (only 2 KB of SRAM are available in the Arduino UNO) during the write of the source code. In fact, all the variables used are of the minimum needed size (this is accomplished using the stdint.h library which defines the exact byte size of each variable type). 

A look-up table is used to encode a character into Morse code. All the character translations are store as bits (0b10 for a dot, 0b1110 for a dash) with a NRZ encoding. They are stored as stream of bits in a uint16_t variable for each one, and they are terminated by a 1. The biggest encoded character is 15-bit long +1 as termination.
