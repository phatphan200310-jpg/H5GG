ARCHS = arm64 arm64e
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1

# Sử dụng SDK mới nhất có sẵn trên máy chủ GitHub
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = H5GG

# Liệt kê các file code cần biên dịch
H5GG_FILES = Tweak.mm ldid-master/ldid.cpp
H5GG_CFLAGS = -fobjc-arc -fvisibility=hidden
H5GG_CCFLAGS = -fobjc-arc -fvisibility=hidden

include $(THEOS_MAKE_PATH)/tweak.mk

clean::
	rm -rf ./packages/*
