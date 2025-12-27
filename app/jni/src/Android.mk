LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := snake

# Add your application source files here...
LOCAL_SRC_FILES := \
    snake.c

SDL_PATH := ../SDL  # SDL

LOCAL_C_INCLUDES := $(LOCAL_PATH)/$(SDL_PATH)/include  # SDL

LOCAL_SHARED_LIBRARIES := SDL3

LOCAL_LDLIBS :=-lSDL2 -lGLESv1_CM -lGLESv2 -lOpenSLES -llog -landroid  # SDL

APP_ABI := armeabi-v7a arm64-v8a
APP_PLATFORM := android-21

include $(BUILD_SHARED_LIBRARY)
