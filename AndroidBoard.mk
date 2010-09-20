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
LOCAL_MODULE := libaudiopolicy.so
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
LOCAL_MODULE := libril.so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_SRC_FILES := proprietary/$(LOCAL_MODULE)
OVERRIDE_BUILT_MODULE_PATH := $(TARGET_OUT_INTERMEDIATE_LIBRARIES)
include $(BUILD_PREBUILT)

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
$(LOCAL_PATH)/proprietary/gps.conf:system/etc/gps.conf \
$(LOCAL_PATH)/proprietary/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
$(LOCAL_PATH)/proprietary/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
$(LOCAL_PATH)/proprietary/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
$(LOCAL_PATH)/proprietary/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
$(LOCAL_PATH)/proprietary/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
$(LOCAL_PATH)/proprietary/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
$(LOCAL_PATH)/proprietary/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
$(LOCAL_PATH)/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
$(LOCAL_PATH)/proprietary/options:system/etc/ppp/options \
$(LOCAL_PATH)/proprietary/vold.conf:system/etc/vold.conf \
$(LOCAL_PATH)/proprietary/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
$(LOCAL_PATH)/proprietary/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
$(LOCAL_PATH)/proprietary/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
$(LOCAL_PATH)/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
$(LOCAL_PATH)/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
$(LOCAL_PATH)/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
$(LOCAL_PATH)/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
$(LOCAL_PATH)/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
$(LOCAL_PATH)/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
$(LOCAL_PATH)/proprietary/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
$(LOCAL_PATH)/proprietary/fr-FR_ta.bin:system/tts/lang_pico/fr-FR_ta.bin \
$(LOCAL_PATH)/proprietary/it-IT_cm0_sg.bin:system/tts/lang_pico/it-IT_cm0_sg.bin \
$(LOCAL_PATH)/proprietary/it-IT_ta.bin:system/tts/lang_pico/it-IT_ta.bin \
$(LOCAL_PATH)/proprietary/melfas-touchkey.kcm.bin:system/usr/keychars/melfas-touchkey.kcm.bin \
$(LOCAL_PATH)/proprietary/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
$(LOCAL_PATH)/proprietary/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
$(LOCAL_PATH)/proprietary/qwerty2.kcm.bin:system/usr/keychars/qwerty2.kcm.bin \
$(LOCAL_PATH)/proprietary/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
$(LOCAL_PATH)/proprietary/s3c-keypad.kcm.bin:system/usr/keychars/s3c-keypad.kcm.bin \
$(LOCAL_PATH)/proprietary/s3c-keypad-rev0000.kcm.bin:system/usr/keychars/s3c-keypad-rev0000.kcm.bin \
$(LOCAL_PATH)/proprietary/s3c-keypad-rev0030.kcm.bin:system/usr/keychars/s3c-keypad-rev0030.kcm.bin \
$(LOCAL_PATH)/proprietary/s3c-keypad-rev0040.kcm.bin:system/usr/keychars/s3c-keypad-rev0040.kcm.bin \
$(LOCAL_PATH)/proprietary/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
$(LOCAL_PATH)/proprietary/sec_jack.kcm.bin:system/usr/keychars/sec_jack.kcm.bin \
$(LOCAL_PATH)/proprietary/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
$(LOCAL_PATH)/proprietary/melfas-touchkey.kl:system/usr/keylayout/melfas-touchkey.kl \
$(LOCAL_PATH)/proprietary/qwerty.kl:system/usr/keylayout/qwerty.kl \
$(LOCAL_PATH)/proprietary/s3c-keypad.kl:system/usr/keylayout/s3c-keypad.kl \
$(LOCAL_PATH)/proprietary/sec_jack.kl:system/usr/keylayout/sec_jack.kl
