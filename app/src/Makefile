#
# Makefile
#

CIRCLEHOME = /circle-step45.1/
LVGLHOME = $(CIRCLEHOME)/addon/lvgl/

OBJS	= build/main.o build/kernel.o

LIBS	= $(LVGLHOME)/liblvgl.a \
	  $(CIRCLEHOME)/lib/usb/libusb.a \
	  $(CIRCLEHOME)/lib/input/libinput.a \
	  $(CIRCLEHOME)/lib/fs/libfs.a \
	  $(CIRCLEHOME)/lib/libcircle.a

include $(CIRCLEHOME)/Rules.mk

-include $(DEPS)
