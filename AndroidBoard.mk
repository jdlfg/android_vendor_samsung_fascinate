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
$(LOCAL_PATH)/proprietary/sechardware.jar:system/framework/sechardware.jar \
$(LOCAL_PATH)/proprietary/seccamera.jar:system/framework/seccamera.jar \
$(LOCAL_PATH)/proprietary/com.pv.extensions.jar:system/framework/com.pv.extensions.jar \
$(LOCAL_PATH)/proprietary/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
$(LOCAL_PATH)/proprietary/com.google.android.gtalkservice.jar:system/framework/com.google.android.gtalkservice.jar \
$(LOCAL_PATH)/proprietary/sec_feature.jar:system/framework/sec_feature.jar \
$(LOCAL_PATH)/proprietary/com.samsung.device.jar:system/framework/com.samsung.device.jar \
$(LOCAL_PATH)/proprietary/com.pv.PVWmdrmClient.jar:system/framework/com.pv.PVWmdrmClient.jar

PRODUCT_COPY_FILES += \
frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
$(LOCAL_PATH)/proprietary/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
$(LOCAL_PATH)/proprietary/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_COPY_FILES += \
$(LOCAL_PATH)/proprietary/rild:system/bin/rild \
$(LOCAL_PATH)/proprietary/softkeysapp:system/bin/softkeysapp \
$(LOCAL_PATH)/proprietary/libRS.so:system/lib/libRS.so \
$(LOCAL_PATH)/proprietary/librs_jni.so:system/lib/librs_jni.so \
$(LOCAL_PATH)/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
$(LOCAL_PATH)/proprietary/pvrsrvinit:system/bin/pvrsrvinit \
$(LOCAL_PATH)/proprietary/BCM4329B1_002.002.023.0417.0464.hcd:system/bin/BCM4329B1_002.002.023.0417.0464.hcd \
$(LOCAL_PATH)/proprietary/bluetoothd:system/bin/bluetoothd \
$(LOCAL_PATH)/proprietary/btld:system/bin/btld \
$(LOCAL_PATH)/proprietary/charging_mode:system/bin/charging_mode \
$(LOCAL_PATH)/proprietary/drexe:system/bin/drexe \
$(LOCAL_PATH)/proprietary/drm_android_siso_test:system/bin/drm_android_siso_test \
$(LOCAL_PATH)/proprietary/drm_sqlite3_test:system/bin/drm_sqlite3_test \
$(LOCAL_PATH)/proprietary/fota_pipe:system/bin/fota_pipe \
$(LOCAL_PATH)/proprietary/glgps_samsungJupiter:system/bin/gpsd/glgps_samsungJupiter \
$(LOCAL_PATH)/proprietary/grabmem:system/bin/grabmem \
$(LOCAL_PATH)/proprietary/hciattach:system/bin/hciattach \
$(LOCAL_PATH)/proprietary/immvbsd:system/bin/immvbsd \
$(LOCAL_PATH)/proprietary/immvibed:system/bin/immvibed \
$(LOCAL_PATH)/proprietary/npsmobex:system/bin/npsmobex \
$(LOCAL_PATH)/proprietary/PCInternet:system/bin/PCInternet \
$(LOCAL_PATH)/proprietary/playlpm:system/bin/playlpm \
$(LOCAL_PATH)/proprietary/pppd_runner:system/bin/pppd_runner \
$(LOCAL_PATH)/proprietary/pv2way_omx_engine_test:system/bin/pv2way_omx_engine_test \
$(LOCAL_PATH)/proprietary/pvplayer_engine_test:system/bin/pvplayer_engine_test \
$(LOCAL_PATH)/proprietary/rilclient-test:system/bin/rilclient-test \
$(LOCAL_PATH)/proprietary/sensorcalibutil_yamaha:system/bin/sensorcalibutil_yamaha \
$(LOCAL_PATH)/proprietary/sensorserver_yamaha:system/bin/sensorserver_yamaha \
$(LOCAL_PATH)/proprietary/sensorstatutil_yamaha:system/bin/sensorstatutil_yamaha \
$(LOCAL_PATH)/proprietary/si4709_test:system/bin/si4709_test \
$(LOCAL_PATH)/proprietary/test_pvauthorengine:system/bin/test_pvauthorengine \
$(LOCAL_PATH)/proprietary/vold:system/bin/vold \
$(LOCAL_PATH)/proprietary/wlservice:system/bin/wlservice \
$(LOCAL_PATH)/proprietary/wm8994:system/bin/wm8994 \
$(LOCAL_PATH)/proprietary/wpa_cli:system/bin/wpa_cli \
$(LOCAL_PATH)/proprietary/wpa_supplicant:system/bin/wpa_supplicant \
$(LOCAL_PATH)/proprietary/gps.conf:system/etc/gps.conf \
$(LOCAL_PATH)/proprietary/options:system/etc/ppp/options \
$(LOCAL_PATH)/proprietary/vold.conf:system/etc/vold.conf \
$(LOCAL_PATH)/proprietary/bcm4329_aps.bin:system/etc/wifi/bcm4329_aps.bin \
$(LOCAL_PATH)/proprietary/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin \
$(LOCAL_PATH)/proprietary/bcm4329_sta.bin:system/etc/wifi/bcm4329_sta.bin \
$(LOCAL_PATH)/proprietary/01_pv_omx_wrapper.yac:system/etc/01_pv_omx_wrapper.yac \
$(LOCAL_PATH)/proprietary/asound.conf:system/etc/asound.conf \
$(LOCAL_PATH)/proprietary/lmfilter.txt:system/etc/audio/lmfilter.txt \
$(LOCAL_PATH)/proprietary/stream_headset.txt:system/etc/audio/stream_headset.txt \
$(LOCAL_PATH)/proprietary/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
$(LOCAL_PATH)/proprietary/situation.txt:system/etc/audio/situation.txt \
$(LOCAL_PATH)/proprietary/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
$(LOCAL_PATH)/proprietary/srstunning.txt:system/etc/audio/srstunning.txt \
$(LOCAL_PATH)/proprietary/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
$(LOCAL_PATH)/proprietary/soundbooster.txt:system/etc/audio/soundbooster.txt \
$(LOCAL_PATH)/proprietary/built-in-app.xml:system/etc/built-in-app.xml \
$(LOCAL_PATH)/proprietary/cdma-carriers-conf.xml:system/etc/cdma-carriers-conf.xml \
$(LOCAL_PATH)/proprietary/dhcpcd.conf:system/etc/hdcpcd/dhcpcd.conf \
$(LOCAL_PATH)/proprietary/enable_eth.sh:system/etc/enable_eth.sh \
$(LOCAL_PATH)/proprietary/enable_ppp.sh:system/etc/enable_ppp.sh \
$(LOCAL_PATH)/proprietary/init.cdma-pppd:system/etc/init.cdma-pppd \
$(LOCAL_PATH)/proprietary/init.gprs-pppd:system/etc/init.gprs-pppd \
$(LOCAL_PATH)/proprietary/initialize_nat.sh:system/etc/initialize_nat.sh \
$(LOCAL_PATH)/proprietary/jupiter.xml:system/etc/jupiter.xml \
$(LOCAL_PATH)/proprietary/Memo.xml:system/etc/kies/Memo.xml \
$(LOCAL_PATH)/proprietary/Device.xml:system/etc/kies/Device.xml \
$(LOCAL_PATH)/proprietary/Contents.xml:system/etc/kies/Contents.xml \
$(LOCAL_PATH)/proprietary/Message.xml:system/etc/kies/Message.xml \
$(LOCAL_PATH)/proprietary/Calendar.xml:system/etc/kies/Calendar.xml \
$(LOCAL_PATH)/proprietary/Phonebook.xml:system/etc/Phonebook.xml \
$(LOCAL_PATH)/proprietary/MELFAS_FIRM.bin:system/etc/melfas/MELFAS_FIRM.bin \
$(LOCAL_PATH)/proprietary/S1Q_MELFAS_FIRM.bin:system/etc/melfas/S1Q_MELFAS_FIRM.bin \
$(LOCAL_PATH)/proprietary/min_value.txt:system/etc/min_value.txt \
$(LOCAL_PATH)/proprietary/mtpdb.yac:system/etc/mtpdb.yac \
$(LOCAL_PATH)/proprietary/str_enus.bin:system/etc/nuance/str_enus.bin \
$(LOCAL_PATH)/proprietary/img_enus.bin:system/etc/nuance/img_enus.bin \
$(LOCAL_PATH)/proprietary/lvr_enus.bin:system/etc/nuance/lvr_enus.bin \
$(LOCAL_PATH)/proprietary/img_esmx.bin:system/etc/nuance/img_esmx.bin \
$(LOCAL_PATH)/proprietary/lvr_esmx.bin:system/etc/nuance/lvr_esmx.bin \
$(LOCAL_PATH)/proprietary/prm_enus.bin:system/etc/nuance/prm_enus.bin \
$(LOCAL_PATH)/proprietary/prm_esmx.bin:system/etc/nuance/prm_esmx.bin \
$(LOCAL_PATH)/proprietary/vst_config_vzw.bin:system/etc/nuance/vst_config_vzw.bin \
$(LOCAL_PATH)/proprietary/str_esmx.bin:system/etc/nuance/str_esmx.bin \
$(LOCAL_PATH)/proprietary/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
$(LOCAL_PATH)/proprietary/com.google.android.gtalkservice.xml:system/etc/permissions/com.google.android.gtalkservice.xml \
$(LOCAL_PATH)/proprietary/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
$(LOCAL_PATH)/proprietary/com.pv.extensions.xml:system/etc/permissions/com.pv.extensions.xml \
$(LOCAL_PATH)/proprietary/com.pv.PVWmdrmClient.xml:system/etc/permissions/com.pv.PVWmdrmClient.xml \
$(LOCAL_PATH)/proprietary/com.samsung.device.xml:system/etc/permissions/com.samsung.device.xml \
$(LOCAL_PATH)/proprietary/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
$(LOCAL_PATH)/proprietary/samsung.feature.octa.xml:system/etc/permissions/samsung.feature.octa.xml \
$(LOCAL_PATH)/proprietary/seccamera.xml:system/etc/permissions/seccamera.xml \
$(LOCAL_PATH)/proprietary/sec_feature.xml:system/etc/permissions/sec_feature.xml \
$(LOCAL_PATH)/proprietary/sec_hardware_library.xml:system/etc/permissions/sec_hardware_library.xml \
$(LOCAL_PATH)/proprietary/PowerOn.wav:system/etc/PowerOn.wav \
$(LOCAL_PATH)/proprietary/chap-secrets:system/etc/ppp/chap-secrets \
$(LOCAL_PATH)/proprietary/ip-down:system/etc/ppp/ip-down \
$(LOCAL_PATH)/proprietary/ip-up:system/etc/ppp/ip-up \
$(LOCAL_PATH)/proprietary/pap-secrets:system/etc/ppp/pap-secrets \
$(LOCAL_PATH)/proprietary/purenandpackages_pref.txt:system/etc/purenandpackages_pref.txt \
$(LOCAL_PATH)/proprietary/purenandpackages.txt:system/etc/purenandpackages.txt \
$(LOCAL_PATH)/proprietary/pvasflocal.yac:system/etc/pvasflocal.yac \
$(LOCAL_PATH)/proprietary/pvasfstreaming.yac:system/etc/pvasfstreaming.yac \
$(LOCAL_PATH)/proprietary/pvextensions.yac:system/etc/pvextensions.yac \
$(LOCAL_PATH)/proprietary/pvOMXcfg.ini:system/etc/pvOMXcfg.ini \
$(LOCAL_PATH)/proprietary/pvplayer2.yac:system/etc/pvplayer2.yac \
$(LOCAL_PATH)/proprietary/pvwmdrm.yac:system/etc/pvwmdrm.yac \
$(LOCAL_PATH)/proprietary/tethering_enable.sh:system/etc/tethering_enable.sh \
$(LOCAL_PATH)/proprietary/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
$(LOCAL_PATH)/proprietary/nvram_net.txt:system/etc/wifi/nvram_net.txt \
$(LOCAL_PATH)/proprietary/wifi.conf:system/etc/wifi/wifi.conf \
$(LOCAL_PATH)/proprietary/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
$(LOCAL_PATH)/proprietary/datapattern_420sp.yuv:system/cameradata/datapattern_420sp.yuv \
$(LOCAL_PATH)/proprietary/datapattern_front_420sp.yuv:system/cameradata/datapattern_front_420sp.yuv \
$(LOCAL_PATH)/proprietary/CE147F00.bin:system/firmware/CE147F00.bin \
$(LOCAL_PATH)/proprietary/CE147F01.bin:system/firmware/CE147F01.bin \
$(LOCAL_PATH)/proprietary/CE147F02.bin:system/firmware/CE147F02.bin \
$(LOCAL_PATH)/proprietary/CE147F03.bin:system/firmware/CE147F03.bin \
$(LOCAL_PATH)/proprietary/libActionShot.so:system/lib/libActionShot.so \
$(LOCAL_PATH)/proprietary/libarccamera.so:system/lib/libarccamera.so \
$(LOCAL_PATH)/proprietary/libbluedroid.so:system/lib/libbluedroid.so \
$(LOCAL_PATH)/proprietary/libbluetoothd.so:system/lib/libbluetoothd.so \
$(LOCAL_PATH)/proprietary/libbluetooth.so:system/lib/libbluetooth.so \
$(LOCAL_PATH)/proprietary/libcamerafirmwarejni.so:system/lib/libcamerafirmwarejni.so \
$(LOCAL_PATH)/proprietary/libCaMotion.so:system/lib/libCaMotion.so \
$(LOCAL_PATH)/proprietary/libcaps.so:system/lib/libcaps.so \
$(LOCAL_PATH)/proprietary/libDHWR.so:system/lib/libDHWR.so \
$(LOCAL_PATH)/proprietary/libdiscjni.so:system/lib/libdiscjni.so \
$(LOCAL_PATH)/proprietary/libdivxdrm.so:system/lib/libdivxdrm.so \
$(LOCAL_PATH)/proprietary/libdivx_jni.so:system/lib/libdivx_jni.so \
$(LOCAL_PATH)/proprietary/libdme_main.so:system/lib/libdme_main.so \
$(LOCAL_PATH)/proprietary/lib_Down_Sampler_ARM_GA_Library.so:system/lib/lib_Down_Sampler_ARM_GA_Library.so \
$(LOCAL_PATH)/proprietary/libdrm2_jni.so:system/lib/libdrm2_jni.so \
$(LOCAL_PATH)/proprietary/libflashlite_jni.so:system/lib/libflashlite_jni.so \
$(LOCAL_PATH)/proprietary/libflashlitepackage.so:system/lib/libflashlitepackage.so \
$(LOCAL_PATH)/proprietary/libflashliteplugin.so:system/lib/libflashliteplugin.so \
$(LOCAL_PATH)/proprietary/libglslcompiler.so:system/lib/libglscompiler.so \
$(LOCAL_PATH)/proprietary/libgps.so:system/lib/libgps.so \
$(LOCAL_PATH)/proprietary/libgtalk_jni.so:system/lib/libgtalk_jni.so \
$(LOCAL_PATH)/proprietary/libIcs.so:system/lib/libIcs.so \
$(LOCAL_PATH)/proprietary/libIMGegl.so:system/lib/libIMGegl.so \
$(LOCAL_PATH)/proprietary/libImmVbs.so:system/lib/libImmVbs.so \
$(LOCAL_PATH)/proprietary/libImmVibeJ.so:system/lib/libImmVibeJ.so \
$(LOCAL_PATH)/proprietary/libImmVibe.so:system/lib/libImmVibe.so \
$(LOCAL_PATH)/proprietary/liblwfa-0.8.2.so:system/lib/liblwfa-0.8.2.so \
$(LOCAL_PATH)/proprietary/liblwfa-0.A.2-mng-p1.so:system/lib/liblwfa-0.A.2-mng-p1.so \
$(LOCAL_PATH)/proprietary/liblwfa-O.7.so:system/lib/liblwfa-0.7.so \
$(LOCAL_PATH)/proprietary/libmnglw-0.8.2.so:system/lib/libmnglw-0.8.2.so \
$(LOCAL_PATH)/proprietary/libms3c_yamaha.so:system/lib/libms3c_yamaha.so \
$(LOCAL_PATH)/proprietary/libmtp_jni.so:system/lib/libmtp_jni.so \
$(LOCAL_PATH)/proprietary/libmtp.so:system/lib/libmtp.so \
$(LOCAL_PATH)/proprietary/libomadrm.so:system/lib/libomadrm.so \
$(LOCAL_PATH)/proprietary/libomx_evrcdec_sharedlibrary.so:system/lib/libomx_evrcdec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libomx_evrcenc_sharedlibrary.so:system/lib/libomx_evrcenc_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libomx_qcelpdec_sharedlibrary.so:system/lib/libomx_qcelpdec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libomx_qcelpenc_sharedlibrary.so:system/lib/libomx_qcelpenc_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libopencore_2way.so:system/lib/libopencore_2way.so \
$(LOCAL_PATH)/proprietary/libPanoraMax1.so:system/lib/libPanoraMax1.so \
$(LOCAL_PATH)/proprietary/libPlusMe.so:system/lib/libPlusMe.so \
$(LOCAL_PATH)/proprietary/libpvdivxdrm.so:system/lib/libpvdivxdrm.so \
$(LOCAL_PATH)/proprietary/libpvr2d.so:system/lib/libpvr2d.so \
$(LOCAL_PATH)/proprietary/libpvrANDROID_WSEGL.so:system/lib/libpvrANDROID_WSEGL.so \
$(LOCAL_PATH)/proprietary/libPVRScopeServices.so:system/lib/libPVRScopeServices.so \
$(LOCAL_PATH)/proprietary/libpvwmdrm.so:system/lib/libpvwdrm.so \
$(LOCAL_PATH)/proprietary/libQmageDecoder.so:system/lib/libQmageDecoder.so \
$(LOCAL_PATH)/proprietary/libquramgifmovie.so:system/lib/libquramgifmovie.so \
$(LOCAL_PATH)/proprietary/libquramimagecodec.so:system/lib/libquramimagecodec.so \
$(LOCAL_PATH)/proprietary/libquramvdecoder.so:system/lib/libquramvdecoder.so \
$(LOCAL_PATH)/proprietary/lib_R2VS_ARM_GA_Library_for_Aries.so:system/lib/lib_R2VS_ARM_GA_Library_for_Aries.so \
$(LOCAL_PATH)/proprietary/libs263domxoc.so:system/lib/libs263domxoc.so \
$(LOCAL_PATH)/proprietary/libs263eomxoc.so:system/lib/libs263eomxoc.so \
$(LOCAL_PATH)/proprietary/libs264domxoc.so:system/lib/libs264domxoc.so \
$(LOCAL_PATH)/proprietary/libs264eomxoc.so:system/lib/libs264eomxoc.so \
$(LOCAL_PATH)/proprietary/libsaacdomxoc.so:system/lib/libsaacdomxoc.so \
$(LOCAL_PATH)/proprietary/libsaaceomxoc.so:system/lib/libsaaceomxoc.so \
$(LOCAL_PATH)/proprietary/libsac3domxoc.so:system/lib/libsac3domxoc.so \
$(LOCAL_PATH)/proprietary/libsamrdomxoc.so:system/lib/libsamrdomxoc.so \
$(LOCAL_PATH)/proprietary/libsamreomxoc.so:system/lib/libsamreomxoc.so \
$(LOCAL_PATH)/proprietary/libsAMRNB.so:system/lib/libsAMRNB.so \
$(LOCAL_PATH)/proprietary/libsAMRWB.so:system/lib/libsAMRWB.so \
$(LOCAL_PATH)/proprietary/libsamsung_http_file.so:system/lib/libsamsung_http_file.so \
$(LOCAL_PATH)/proprietary/libsamsung_http.so:system/lib/libsamsung_http.so \
$(LOCAL_PATH)/proprietary/libsamsung_psi.so:system/lib/libsamsung_psi.so \
$(LOCAL_PATH)/proprietary/libsamsungr2vs.so:system/lib/libsamsungr2vs.so \
$(LOCAL_PATH)/proprietary/libsavidocn.so:system/lib/libsavidocn.so \
$(LOCAL_PATH)/proprietary/libsavidreg.so:system/lib/libsavidreg.so \
$(LOCAL_PATH)/proprietary/libsavsac.so:system/lib/libsavsac.so \
$(LOCAL_PATH)/proprietary/libsavscmn.so:system/lib/libsavscmn.so \
$(LOCAL_PATH)/proprietary/libsavsff.so:system/lib/libsavsff.so \
$(LOCAL_PATH)/proprietary/libsavsvc.so:system/lib/libsavsvc.so \
$(LOCAL_PATH)/proprietary/libscreencapture.so:system/lib/libscreencapture.so \
$(LOCAL_PATH)/proprietary/libsdiv3domxoc.so:system/lib/libsdiv3domxoc.so \
$(LOCAL_PATH)/proprietary/libseccamera.so:system/lib/libseccamera.so \
$(LOCAL_PATH)/proprietary/libsecgps.so:system/lib/libsecgps.so \
$(LOCAL_PATH)/proprietary/libSecOMXCore.so:system/lib/libSecOMXCore.so \
$(LOCAL_PATH)/proprietary/libsec-ril40.so:system/lib/libsec-ril40.so \
$(LOCAL_PATH)/proprietary/libsensor_yamaha.so:system/lib/libsensor_yamaha.so \
$(LOCAL_PATH)/proprietary/libsensor_yamaha_test.so:system/lib/libsensor_yamaha_test.so \
$(LOCAL_PATH)/proprietary/libsflacdomxoc.so:system/lib/libsflacdomxoc.so \
$(LOCAL_PATH)/proprietary/libsflacfdocn.so:system/lib/libsflacdocn.so \
$(LOCAL_PATH)/proprietary/libsflacfdreg.so:system/lib/libsflacfdreg.so \
$(LOCAL_PATH)/proprietary/libsflvdocn.so:system/lib/libsflvdocn.so \
$(LOCAL_PATH)/proprietary/libsflvdreg.so:system/lib/libsflvdreg.so \
$(LOCAL_PATH)/proprietary/libsisodrm.so:system/lib/libsisodrm.so \
$(LOCAL_PATH)/proprietary/libsmkvdocn.so:system/lib/libsmkvdocn.so \
$(LOCAL_PATH)/proprietary/libsmkvdreg.so:system/lib/libsmkvdreg.so \
$(LOCAL_PATH)/proprietary/libsmp3domxoc.so:system/lib/libsmp3domxoc.so \
$(LOCAL_PATH)/proprietary/libsmp4fmocn.so:system/lib/libsmp4fmocn.so \
$(LOCAL_PATH)/proprietary/libsmp4vdomxoc.so:system/lib/libsmp4vdomxoc.so \
$(LOCAL_PATH)/proprietary/libsmp4veomxoc.so:system/lib/libsmp4veomxoc.so \
$(LOCAL_PATH)/proprietary/libsolocore_common.so:system/lib/libsolocore_common.so \
$(LOCAL_PATH)/proprietary/libsolocore_downloadreg.so:system/lib/libsolocore_downloadreg.so \
$(LOCAL_PATH)/proprietary/libsolocore_download.so:system/lib/libsolocore_download.so \
$(LOCAL_PATH)/proprietary/libsolocore_mp4localreg.so:system/lib/libsolocore_mp4localreg.so \
$(LOCAL_PATH)/proprietary/libsolocore_mp4local.so:system/lib/libsolocore_mp4local.so \
$(LOCAL_PATH)/proprietary/libsolocore_net_support.so:system/lib/libsolocore_net_support.so \
$(LOCAL_PATH)/proprietary/libsolocore_player.so:system/lib/libsolocore_player.so \
$(LOCAL_PATH)/proprietary/libsolocore_pvme.so:system/lib/libsolocore_pvme.so \
$(LOCAL_PATH)/proprietary/libsolocore_streamingreg.so:system/lib/libsolocore_streamingreg.so \
$(LOCAL_PATH)/proprietary/libsolocore_streaming.so:system/lib/libsolocore_streaming.so \
$(LOCAL_PATH)/proprietary/libsolohw.so:system/lib/libsolohw.so \
$(LOCAL_PATH)/proprietary/libsoloomx_sharedlibrary.so:system/lib/libsoloomx_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libsoloomx_wmadec_sharedlibrary.so:system/lib/libsoloomx_wmadec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libsoloomx_wmvdec_sharedlibrary.so:system/lib/libsoloomx_wmvdec_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libsoloomx_wrapper_sharedlibrary.so:system/lib/libsoloomx_wrapper_sharedlibrary.so \
$(LOCAL_PATH)/proprietary/libsolopvasfcommon.so:system/lib/libsolopvasfcommon.so \
$(LOCAL_PATH)/proprietary/libsolopvasflocalpbreg.so:system/lib/libsolopvasflocalpbreg.so \
$(LOCAL_PATH)/proprietary/libsolopvasflocalpb.so:system/lib/libsolopvasflocalpb.so \
$(LOCAL_PATH)/proprietary/libsolopvasxparser_extn.so:system/lib/libsolopvasxparser_extn.so \
$(LOCAL_PATH)/proprietary/libsolopvdbconfigclass.so:system/lib/libsolopvdbconfigclass.so \
$(LOCAL_PATH)/proprietary/libsolopvdb_recovery_utility.so:system/lib/libsolopvdb_recovery_utility.so \
$(LOCAL_PATH)/proprietary/libsolopvdb.so:system/lib/libsolopvdb.so \
$(LOCAL_PATH)/proprietary/libsolopvdla_extn.so:system/lib/libsolopvdla_extn.so \
$(LOCAL_PATH)/proprietary/libsolopvgetmetadata_extn.so:system/lib/libsolopvgetmetadata_extn.so \
$(LOCAL_PATH)/proprietary/libsolopviptransport.so:system/lib/libsolopviptransport.so \
$(LOCAL_PATH)/proprietary/libsolopvjanus.so:system/lib/libsolopvjanus.so \
$(LOCAL_PATH)/proprietary/libsolopvmshttp_streamingreg.so:system/lib/libsolopvmshttp_streamingreg.so \
$(LOCAL_PATH)/proprietary/libsolopvmshttp_streaming.so:system/lib/libsolopvmshttp_streaming.so \
$(LOCAL_PATH)/proprietary/libsolopvmtpconfigclass.so:system/lib/libsolopvmtpconfigclass.so \
$(LOCAL_PATH)/proprietary/libsolopvmtpip.so:system/lib/libsolopvmtpip.so \
$(LOCAL_PATH)/proprietary/libsolopvmtp_jni.so:system/lib/libsolopvmtp_jni.so \
$(LOCAL_PATH)/proprietary/libsolopvmtpservice.so:system/lib/libsolopvmtpservice.so \
$(LOCAL_PATH)/proprietary/libsolopvmtp.so:system/lib/libsolopvmtp.so \
$(LOCAL_PATH)/proprietary/libsolopvmtp_usb_transport.so:system/lib/libsolopvmtp_usb_transport.so \
$(LOCAL_PATH)/proprietary/libsolopvplaybackcontrol_extn.so:system/lib/libsolopvplaybackcontrol_extn.so \
$(LOCAL_PATH)/proprietary/libsolopvprotocolengine_asfstreamingreg.so:system/lib/libsolopvprotocolengine_asfstreamingreg.so \
$(LOCAL_PATH)/proprietary/libsolopvprotocolengine_asfstreaming.so:system/lib/libsolopvprotocolengine_asfstreaming.so \
$(LOCAL_PATH)/proprietary/libsolopvsetparameter_extn.so:system/lib/libsolopvsetparameter_extn.so \
$(LOCAL_PATH)/proprietary/libsolopvupnp.so:system/lib/libsolopvupnp.so \
$(LOCAL_PATH)/proprietary/libsolopvwmdrm_jni.so:system/lib/libsolopvwmdrm_jni.so \
$(LOCAL_PATH)/proprietary/libsolopvwmdrmoemsettings.so:system/lib/libsolopvwmdrmoemsettings.so \
$(LOCAL_PATH)/proprietary/libsolopvwmdrmservice.so:system/lib/libsolopvwmdrmservice.so \
$(LOCAL_PATH)/proprietary/libsolopvwmdrm.so:system/lib/libsolopvwmdrm.so \
$(LOCAL_PATH)/proprietary/libspeech.so:system/lib/libspeech.so \
$(LOCAL_PATH)/proprietary/libsrv_init.so:system/lib/libsrv_init.so \
$(LOCAL_PATH)/proprietary/libsrv_um.so:system/lib/libsrv_um.so \
$(LOCAL_PATH)/proprietary/libsthmb.so:system/lib/libsthmb.so \
$(LOCAL_PATH)/proprietary/libsvc1domxoc.so:system/lib/libsvc1domxoc.so \
$(LOCAL_PATH)/proprietary/libsvgplayer.so:system/lib/libsvgplayer.so \
$(LOCAL_PATH)/proprietary/libswmadomxoc.so:system/lib/libswmadomxoc.so \
$(LOCAL_PATH)/proprietary/libswmfdocn.so:system/lib/libswmfdocn.so \
$(LOCAL_PATH)/proprietary/libswmfdreg.so:system/lib/libswmfdreg.so \
$(LOCAL_PATH)/proprietary/libswmv7domxoc.so:system/lib/libswmv7domxoc.so \
$(LOCAL_PATH)/proprietary/libswmv8domxoc.so:system/lib/libswmv8domxoc.so \
$(LOCAL_PATH)/proprietary/libSwypeCore.so:system/lib/libSwypeCore.so \
$(LOCAL_PATH)/proprietary/libtiffanyjni.so:system/lib/libtiffanyjni.so \
$(LOCAL_PATH)/proprietary/libusbmode_jni.so:system/lib/libusbmode_jni.so \
$(LOCAL_PATH)/proprietary/libve_jni.so:system/lib/libve_jni.so \
$(LOCAL_PATH)/proprietary/libvideieditor.so:system/lib/libvideieditor.so \
$(LOCAL_PATH)/proprietary/lib_VoiceBooster_ARM_GA_Library.so:system/lib/lib_VoiceBooster_ARM_GA_Library.so \
$(LOCAL_PATH)/proprietary/libvsuite_sharedlib.so:system/lib/libvsuite_sharedlib.so \
$(LOCAL_PATH)/proprietary/libvzw-loc-prov.so:system/lib/libvzw-loc-prov.so \
$(LOCAL_PATH)/proprietary/libwifitest.so:system/lib/libwifitest.so \
$(LOCAL_PATH)/proprietary/libwldhcp.so:system/lib/libwldhcp.so \
$(LOCAL_PATH)/proprietary/libwlservice.so:system/lib/libwlservice.so \
$(LOCAL_PATH)/proprietary/libwlwpscli.so:system/lib/libwlwpscli.so \
$(LOCAL_PATH)/proprietary/libwlwps.so:system/lib/libwlwps.so \
$(LOCAL_PATH)/proprietary/libwmdrm_jni.so:system/lib/libwmdrm_jni.so \
$(LOCAL_PATH)/proprietary/libwmdrm.so:system/lib/libwmdrm.so \
$(LOCAL_PATH)/proprietary/libwmlscriptcore.so:system/lib/libwmlscriptcore.so \
$(LOCAL_PATH)/proprietary/libwtlcore.so:system/lib/libwtlcore.so \
$(LOCAL_PATH)/proprietary/libSwypeCore.so:system/lib/SCH-I500/libSwypeCore.so \
$(LOCAL_PATH)/proprietary/libEGL_POWERVR_SGX540_120.so:system/lib/egl/libEGL_POWERVR_SGX540_120.so \
$(LOCAL_PATH)/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \
$(LOCAL_PATH)/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/lib/egl/libGLESv2_POWERVR_SGX540_120.so \
$(LOCAL_PATH)/proprietary/copybit.s5pc110.so:system/lib/hw/copybit.s5pc110.so \
$(LOCAL_PATH)/proprietary/gralloc.s5pc110.so:system/lib/hw/gralloc.s5pc110.so \
$(LOCAL_PATH)/proprietary/lights.default.so:system/lib/hw/lights.default.so \
$(LOCAL_PATH)/proprietary/sensors.SCH-I500.so:system/lib/hw/sensors.SCH-I500.so \
$(LOCAL_PATH)/proprietary/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
$(LOCAL_PATH)/proprietary/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
$(LOCAL_PATH)/proprietary/en-GB_kh0_sg.bin:system/tts/lang_pico/en-GB_kh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-GB_ta.bin:system/tts/lang_pico/en-GB_ta.bin \
$(LOCAL_PATH)/proprietary/en-US_lh0_sg.bin:system/tts/lang_pico/en-US_lh0_sg.bin \
$(LOCAL_PATH)/proprietary/en-US_ta.bin:system/tts/lang_pico/en-US_ta.bin \
$(LOCAL_PATH)/proprietary/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
$(LOCAL_PATH)/proprietary/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
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
