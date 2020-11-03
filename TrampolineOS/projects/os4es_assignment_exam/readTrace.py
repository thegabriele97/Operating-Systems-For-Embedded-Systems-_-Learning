#! /usr/bin/env python3
# -*- coding: UTF-8 -*-
import json
import sys
import argparse
import time
import textwrap

if __name__ == '__main__':
    defaultTraceFile = 'trace.json'
    #arguments (no default arg for -i and -o to get None if not defined)
    parser = argparse.ArgumentParser(description='Use the trace tookit to get information on Trampoline based application behavior. 2 input modes for now: json file or serial line.',
    formatter_class=argparse.RawDescriptionHelpFormatter, epilog=textwrap.dedent(
    '''\
        --------------------------------
        Example: 
          {0} -i trace.json                     # read a json trace file, output to stdout
          {0} -s /dev/ttyACM0,9600              # read from serial line,  output to stdout
          {0} -s /dev/ttyACM1,9600 -o test.json # read from serial line, and store raw events in test.json

        If no input argument given, same as '-i trace.json', output on stdout.
    '''.format(sys.argv[0])))
    #options -i (or -o,-s), with nargs
    #  * nothing => None
    #  * -i      => default (trace.json, ...)
    #  * -i file => file
    parser.add_argument("-i", "--input", type=str, nargs='?', const=defaultTraceFile, metavar='inputFile', help='use JSON input file.')
    parser.add_argument("-s", "--serial", type=str, nargs='?', const='/dev/ttyACM1,9600',metavar='serial', help='Use the serial line to get events. Parameter is the device name and speed. For instance "/dev/ttyACM0,9600"')
    parser.add_argument("-o", "--output", type=str, nargs='?', const=defaultTraceFile, metavar='outputFile', help='Store the event list into a JSON format for later use.')
    parser.add_argument("-v", "--verbose", default=False, action="store_true", help="verbose mode")
    args = parser.parse_args()

    #first, get access to files.
    traceToolFolder = "../../trampoline/extra/trace-tools"
    sys.path.append(traceToolFolder)
    try:
        import StaticInfo
        import TraceReader
        import TraceEvaluate
        import TraceExport
    except ImportError:
        print("I can't find trace tools scripts")
        print("=> searched in '"+traceToolFolder+"'")
        print("Maybe the TRAMPOLINE_BASE_PATH is not correctly set in your .oil file")
        print("Correct it and run goil again.")
        sys.exit(1)

    #reader    => getting raw events
    if args.serial: #serial line?
        serialParams=args.serial.split(',')
        reader   = TraceReader.TraceReaderSerial(serialParams,args.verbose)
    else:           #then file.
        if not args.input:
            args.input = defaultTraceFile
        reader   = TraceReader.TraceReaderFile(args.input)

    #output
    outputToFile = False
    if args.output:
        outputToFile = True
        rawEventList = []
    else:
        #export    => front end (txt, gui)
        export   = TraceExport.TraceExportTxt()
        #read static information
        si = StaticInfo.StaticInfo('conf/tpl_static_info.json')
        #evaluator => from raw events and Static info. Get events
        evaluate = TraceEvaluate.TraceEvaluate(si)
        evaluate.setExport(export)

    #end of config. main loop
    try:
        for rawEvent in reader.getEvent():
            if outputToFile:
                rawEventList.append(rawEvent)
            else:
                evaluate.evaluate(rawEvent)
    except KeyboardInterrupt:
        reader.stop()
        if outputToFile:
            if args.verbose:
                print('save to '+args.output)
            with open(args.output, "w") as outfile:
                json.dump(rawEventList, outfile, indent=2)

