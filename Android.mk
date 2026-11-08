# Builds Liblouis 3.35.0, with the changes listed in README.md, as the shared
# library liblouis.so that Güven Braille Klavye loads. Build with the Android
# NDK's ndk-build; the app's own JNI bridge links against this library.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := louis
LOCAL_CFLAGS := -DTABLESDIR='"/data/local/tmp/liblouis/tables"'
LOCAL_C_INCLUDES := $(LOCAL_PATH)/liblouis
LOCAL_SRC_FILES := \
    liblouis/commonTranslationFunctions.c \
    liblouis/compileTranslationTable.c \
    liblouis/logging.c \
    liblouis/lou_backTranslateString.c \
    liblouis/lou_translateString.c \
    liblouis/maketable.c \
    liblouis/metadata.c \
    liblouis/pattern.c \
    liblouis/utils.c
include $(BUILD_SHARED_LIBRARY)
