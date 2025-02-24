TARGET := iphone:clang:18.2:14.0

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = NotRecording
NotRecording_FILES = main.m AppDelegate.m Shared.m dyld_validation_check.m utils.m Tweak.x
NotRecording_FRAMEWORKS = UIKit
NotRecording_CFLAGS = -fobjc-arc
NotRecording_CODESIGN_FLAGS = -Sent.plist
NotRecording_INSTALL_PATH = /Applications

include $(THEOS_MAKE_PATH)/application.mk

after-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Applications/NotRecording.app$(ECHO_END)
	$(ECHO_NOTHING)cp $(THEOS_STAGING_DIR)/Applications/NotRecording.app/NotRecording $(THEOS_STAGING_DIR)/Applications/NotRecording.app/NotRecording$(ECHO_END)