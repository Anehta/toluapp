LOCAL_PATH := $(call my-dir)/../..

include $(CLEAR_VARS)

LOCAL_MODULE := toluapp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(LOCAL_PATH)/../lua/src \

SDL_SRCS := \
    src/lib/*.c \

LOCAL_SRC_FILES := $(foreach F, $(SDL_SRCS), $(addprefix $(dir $(F)),$(notdir $(wildcard $(LOCAL_PATH)/$(F)))))

LOCAL_LDLIBS := -L$(LOCAL_PATH)/../lua/android/libs/armeabi -llua

include $(BUILD_SHARED_LIBRARY)
