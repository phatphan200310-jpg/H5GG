ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

# Thiết lập target tương thích với môi trường GitHub Actions
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = H5GG

# Chỉ định các file nguồn của H5GG
H5GG_FILES = Tweak.mm ldid-master/ldid.cpp
H5GG_CFLAGS = -fobjc-arc -fvisibility=hidden
H5GG_CCFLAGS = -fobjc-arc -fvisibility=hidden

include $(THEOS_MAKE_PATH)/tweak.mk

clean::
	rm -rf ./packages/*
