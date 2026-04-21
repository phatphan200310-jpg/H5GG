ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1

# Ép sử dụng trình biên dịch clang trực tiếp của macOS
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = H5GG

H5GG_FILES = Tweak.mm ldid-master/ldid.cpp
H5GG_CFLAGS = -fobjc-arc
H5GG_CCFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
