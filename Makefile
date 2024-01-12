ARCHS = arm64 arm64e
TARGET = iphone:clang:15.7.3:15.0
PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SnoolieBattery

SnoolieBattery_FILES = Tweak.x
SnoolieBattery_CFLAGS = -fobjc-arc
SnoolieBattery_USE_SUBSTRATE = 0
SnoolieBattery_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk