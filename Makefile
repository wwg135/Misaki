export ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME=rootless
DEBUG=0
FINALPACKAGE=1
PACKAGE_VERSION = 1.0
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Misaki_CN
$(TWEAK_NAME)_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
