ifeq ($(TARGET_PROVIDES_CAMERA_HAL),true)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    CameraWrapper.cpp

LOCAL_SHARED_LIBRARIES := \
    libhardware liblog libcamera_client libutils

LOCAL_C_INCLUDES := \
    system/core/include \
    system/media/camera/include

LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)/hw
LOCAL_MODULE := DESATIVADO_TEMPORARIAMENTE
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

endif
