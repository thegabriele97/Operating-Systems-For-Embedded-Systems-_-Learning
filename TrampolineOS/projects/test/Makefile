.DEFAULT_GOAL := proj-build

TRAMPOLINE_PATH="../../trampoline"

all: goil-build proj-build upload

oil_name=$(shell find -name "*.oil")
goil-build:
	@echo "Building the oil file $(oil_name)..."
	$(TRAMPOLINE_PATH)/goil/makefile-unix/goil --target=avr/arduino/uno --templates=$(TRAMPOLINE_PATH)/goil/templates $(oil_name)
	@echo "Done."

proj-build:
	@echo "Building the project..."
	python ./build.py
	@echo "Done."

proc="m328p"
baudrate="57600"
hexname=$(shell find -name "*.hex")
upload:
	@echo "Uploading to arduino $(proc) on $(port) @ $(baudrate)"
	avrdude -v -c arduino -p $(proc) -P $(port) -b $(baudrate) -U flash:w:$(hexname)
	@echo "Done."

clean:
	@echo "Cleaning..."
	rm -rf build conf build.py make.py *.hex
	@echo "Done."
