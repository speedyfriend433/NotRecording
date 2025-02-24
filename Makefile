ifeq ($(THEOS_PACKAGE_SCHEME),rootless)
TARGET := iphone:clang:18.2:15.0
else
TARGET := iphone:clang:18.2:14.0
endif

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NotRecording
NotRecording_FILES = main.m AppDelegate.m Shared.m dyld_validation_check.m utils.m
NotRecording_FRAMEWORKS = UIKit
NotRecording_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
