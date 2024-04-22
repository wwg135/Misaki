export ARCHS = arm64 arm64e
THEOS_PACKAGE_SCHEME=rootless
DEBUG=0
FINALPACKAGE=1
PACKAGE_VERSION = 1.0
TARGET = iphone:clang:latest:15.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Patcher
Patcher_FILES = Tweak.xm
Patche_CFLAGS = -fobjc-arc -Wdeprecated-declarations -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk
