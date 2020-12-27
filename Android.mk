LOCAL_PATH := $(call my-dir)

ifneq ($(filter krillin, $(TARGET_DEVICE)),)

include $(CLEAR_VARS)
LOCAL_MODULE := mtk-ril
LOCAL_SRC_FILES := lib/mtk-ril.so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := librilmtk
LOCAL_SRC_FILES := lib/librilmtk.so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libion_mtk
LOCAL_SRC_FILES := lib/libion_mtk.so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcam1client
LOCAL_SRC_FILES := lib/libcam1client.so
LOCAL_PROPRIETARY_MODULE = true
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := FmRadioTrampoline2
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES := app/FmRadioTrampoline2/FmRadioTrampoline2.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := FMRadioGoogle
LOCAL_MODULE_OWNER := google
LOCAL_SRC_FILES := app/FMRadioGoogle/FMRadioGoogle.apk
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := platform
include $(BUILD_PREBUILT)

endif
