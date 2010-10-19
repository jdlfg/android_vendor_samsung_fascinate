LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
endif

file := $(INSTALLED_KERNEL_TARGET)
ALL_PREBUILT += $(file)
$(file): $(TARGET_PREBUILT_KERNEL) | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_ROOT_OUT)/init.smdkc110.rc
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/init.smdkc110.rc | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_RECOVERY_ROOT_OUT)/sbin/postrecoveryboot.sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/postrecoveryboot.sh | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_RECOVERY_ROOT_OUT)/sbin/su
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/su | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_RECOVERY_ROOT_OUT)/sbin/fformat
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/fformat | $(ACP)
	$(transform-prebuilt-to-target)

file := $(TARGET_RECOVERY_ROOT_OUT)/res/sh
ALL_PREBUILT += $(file)
$(file) : $(LOCAL_PATH)/sh | $(ACP)
	$(transform-prebuilt-to-target)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudio.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libwm8994.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsamsunglmeq.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := liba2dp.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libsecril-client.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libs3cjpeg.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libaudiopolicy.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libvolcustomjni.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libcamera.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libseccameraadaptor.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libril.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

PRODUCT_COPY_FILES += \
    vendor/samsung/fascinate/apns-conf.xml:system/etc/apns-conf.xml

# Install the features available on this device.
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

# Keylayout / Keychars
PRODUCT_COPY_FILES += \
     vendor/samsung/fascinate/prebuilt/keylayout/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
     vendor/samsung/fascinate/prebuilt/keylayout/sec_jack.kl:system/usr/keylayout/sec_jack.kl \
     vendor/samsung/fascinate/prebuilt/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
     vendor/samsung/fascinate/prebuilt/keylayout/melfas-touchkey.kl:system/usr/keylayout/melfas-touchkey.kl \
     vendor/samsung/fascinate/prebuilt/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
     vendor/samsung/fascinate/prebuilt/keychars/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/melfas-touchkey.kcm.bin:system/usr/keychars/melfas-touchkey.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/s3c-keypad-rev0040.kcm.bin:system/usr/keychars/s3c-keypad-rev0040.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/s3c-keypad-rev0030.kcm.bin:system/usr/keychars/s3c-keypad-rev0030.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/s3c-keypad-rev0000.kcm.bin:system/usr/keychars/s3c-keypad-rev0000.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
     vendor/samsung/fascinate/prebuilt/keychars/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin  


# vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vold:system/bin/vold \
    $(LOCAL_PATH)/proprietary/vold.conf:system/etc/vold.conf

# ppp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/pppd:system/bin/pppd \
    $(LOCAL_PATH)/proprietary/pppd_runner:system/bin/pppd_runner \
    $(LOCAL_PATH)/proprietary/chap-secrets:system/etc/ppp/chap-secrets \
    $(LOCAL_PATH)/proprietary/ip-down:system/etc/ppp/ip-down \
    $(LOCAL_PATH)/proprietary/ip-up:system/etc/ppp/ip-up \
    $(LOCAL_PATH)/proprietary/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    $(LOCAL_PATH)/proprietary/options:system/etc/ppp/options \
    $(LOCAL_PATH)/proprietary/pap-secrets:system/etc/ppp/pap-secrets

#
# Wifi
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libwlservice.so:system/lib/libwlservice.so \
    $(LOCAL_PATH)/proprietary/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    $(LOCAL_PATH)/proprietary/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    $(LOCAL_PATH)/proprietary/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
    $(LOCAL_PATH)/proprietary/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
    $(LOCAL_PATH)/proprietary/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
    $(LOCAL_PATH)/proprietary/wlservice:system/bin/wlservice

#
# Display (3D)
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/libGLES_android.so:system/lib/egl/libGLES_android.so \
    $(LOCAL_PATH)/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
    $(LOCAL_PATH)/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
    $(LOCAL_PATH)/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
    $(LOCAL_PATH)/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
    $(LOCAL_PATH)/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so

#
# Sensors, Lights etc
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \
    $(LOCAL_PATH)/proprietary/lights.default.so:system/lib/hw/lights.default.so \
    $(LOCAL_PATH)/proprietary/sensors.SCH-I500.so:system/lib/hw/sensors.SCH-I500.so \
    $(LOCAL_PATH)/proprietary/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \
    $(LOCAL_PATH)/proprietary/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
    $(LOCAL_PATH)/proprietary/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \
    $(LOCAL_PATH)/proprietary/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
    $(LOCAL_PATH)/proprietary/sensorserver_yamaha:system/bin/sensorserver_yamaha \
    $(LOCAL_PATH)/proprietary/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha

#
# Camera
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libarccamera.so:system/lib/libarccamera.so \
    $(LOCAL_PATH)/proprietary/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \
    $(LOCAL_PATH)/proprietary/libcamera.so:system/lib/libcamera.so \
    $(LOCAL_PATH)/proprietary/libseccameraadaptor.so:system/lib/libseccameraadaptor.so \
    $(LOCAL_PATH)/proprietary/libseccamera.so:system/lib/libseccamera.so

#
# RIL
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libril.so:system/lib/libril.so \
    $(LOCAL_PATH)/proprietary/libsec-ril40.so:system/lib/libsec-ril40.so \
    $(LOCAL_PATH)/proprietary/libreference-ril.so:system/lib/libreference-ril.so \
    $(LOCAL_PATH)/proprietary/libsecril-client.so:system/lib/libsecril-client.so \
    $(LOCAL_PATH)/proprietary/drexe:system/bin/drexe \
    $(LOCAL_PATH)/proprietary/rilclient-test:system/bin/rilclient-test \
    $(LOCAL_PATH)/proprietary/rild:system/bin/rild

#
# GPS
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libgps.so:system/lib/libgps.so \
    $(LOCAL_PATH)/proprietary/libsecgps.so:system/lib/libsecgps.so

#
# OMX
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libs263domxoc.so:system/lib/libs263domxoc.so \
    $(LOCAL_PATH)/proprietary/libs263eomxoc.so:system/lib/libs263eomxoc.so \
    $(LOCAL_PATH)/proprietary/libs264domxoc.so:system/lib/libs264domxoc.so \
    $(LOCAL_PATH)/proprietary/libs264eomxoc.so:system/lib/libs264eomxoc.so \
    $(LOCAL_PATH)/proprietary/libsaacdomxoc.so:system/lib/libsaacdomxoc.so \
    $(LOCAL_PATH)/proprietary/libsaaceomxoc.so:system/lib/libsaaceomxoc.so \
    $(LOCAL_PATH)/proprietary/libsac3domxoc.so:system/lib/libsac3domxoc.so \
    $(LOCAL_PATH)/proprietary/libsamrdomxoc.so:system/lib/libsamrdomxoc.so \
    $(LOCAL_PATH)/proprietary/libsamreomxoc.so:system/lib/libsamreomxoc.so \
    $(LOCAL_PATH)/proprietary/libsdiv3domxoc.so:system/lib/libsdiv3domxoc.so \
    $(LOCAL_PATH)/proprietary/libsflacdomxoc.so:system/lib/libsflacdomxoc.so \
    $(LOCAL_PATH)/proprietary/libsmp3domxoc.so:system/lib/libsmp3domxoc.so \
    $(LOCAL_PATH)/proprietary/libsmp4fmocn.so:system/lib/libsmp4fmocn.so \
    $(LOCAL_PATH)/proprietary/libsmp4vdomxoc.so:system/lib/libsmp4vdomxoc.so \
    $(LOCAL_PATH)/proprietary/libsmp4veomxoc.so:system/lib/libsmp4veomxoc.so \
    $(LOCAL_PATH)/proprietary/libsvc1domxoc.so:system/lib/libsvc1domxoc.so \
    $(LOCAL_PATH)/proprietary/libswmadomxoc.so:system/lib/libswmadomxoc.so \
    $(LOCAL_PATH)/proprietary/libswmv7domxoc.so:system/lib/libswmv7domxoc.so \
    $(LOCAL_PATH)/proprietary/libswmv8domxoc.so:system/lib/libswmv8domxoc.so

#
# Audio
#
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/libs3cjpeg.so:system/lib/libs3cjpeg.so \
    $(LOCAL_PATH)/proprietary/libaudio.so:system/lib/libaudio.so \
    $(LOCAL_PATH)/proprietary/libwm8994.so:system/lib/libwm8994.so \
    $(LOCAL_PATH)/proprietary/libsamsunglmeq.so:system/lib/libsamsunglmeq.so \
    $(LOCAL_PATH)/proprietary/liba2dp.so:system/lib/liba2dp.so \
    $(LOCAL_PATH)/proprietary/libaudiopolicy.so:system/lib/libaudiopolicy.so \
    $(LOCAL_PATH)/proprietary/libvolcustomjni.so:system/lib/libvolcustomjni.so

