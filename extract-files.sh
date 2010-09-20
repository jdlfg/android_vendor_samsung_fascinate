#!/bin/sh

rm -rf proprietary
mkdir -p proprietary

adb pull /system/lib/libgps.so proprietary
adb pull /system/lib/libaudio.so proprietary
adb pull /system/lib/libaudiopolicy.so proprietary
adb pull /system/lib/libcamera.so proprietary
adb pull /system/lib/libril.so proprietary

adb pull /system/bin/pvrsrvinit proprietary

adb pull /system/etc/gps.conf proprietary
adb pull /system/etc/permissions/android.hardware.camera.autofocus.xml proprietary
adb pull /system/etc/permissions/android.hardware.camera.flash-autofocus.xml proprietary
adb pull /system/etc/permissions/android.hardware.sensor.light.xml proprietary
adb pull /system/etc/permissions/android.hardware.sensor.proximity.xml proprietary
adb pull /system/etc/permissions/android.hardware.telephony.cdma.xml proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml proprietary
adb pull /system/etc/permissions/android.hardware.touchscreen.multitouch.xml proprietary
adb pull /system/etc/permissions/android.software.live_wallpaper.xml proprietary
adb pull /system/etc/ppp/options proprietary
adb pull /system/etc/vold.conf proprietary
adb pull /system/etc/wifi/bcm4329_aps.bin proprietary
adb pull /system/etc/wifi/bcm4329_mfg.bin proprietary
adb pull /system/etc/wifi/bcm4329_sta.bin proprietary

adb pull /system/lib/libwm8994.so proprietary
adb pull /system/lib/libsamsunglmeq.so proprietary
adb pull /system/lib/liba2dp.so proprietary
adb pull /system/lib/libsecril-client.so proprietary
adb pull /system/lib/libs3cjpeg.so proprietary

adb pull /system/tts/lang_pico/de-DE_gl0_sg.bin proprietary
adb pull /system/tts/lang_pico/de-DE_ta.bin proprietary
adb pull /system/tts/lang_pico/en-GB_kh0_sg.bin proprietary
adb pull /system/tts/lang_pico/en-GB_ta.bin proprietary
adb pull /system/tts/lang_pico/en-US_lh0_sg.bin proprietary
adb pull /system/tts/lang_pico/en-US_ta.bin proprietary
adb pull /system/tts/lang_pico/es-ES_ta.bin proprietary
adb pull /system/tts/lang_pico/es-ES_zl0_sg.bin proprietary
adb pull /system/tts/lang_pico/fr-FR_nk0_sg.bin proprietary
adb pull /system/tts/lang_pico/fr-FR_ta.bin proprietary
adb pull /system/tts/lang_pico/it-IT_cm0_sg.bin proprietary
adb pull /system/tts/lang_pico/it-IT_ta.bin proprietary

adb pull /system/usr/keychars/melfas-touchkey.kcm.bin proprietary
adb pull /system/usr/keychars/melfas_ts_input.kcm.bin proprietary
adb pull /system/usr/keychars/optjoy_device.kcm.bin proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin proprietary
adb pull /system/usr/keychars/qwerty.kcm.bin proprietary
adb pull /system/usr/keychars/s3c-keypad.kcm.bin proprietary
adb pull /system/usr/keychars/s3c-keypad-rev0000.kcm.bin proprietary
adb pull /system/usr/keychars/s3c-keypad-rev0030.kcm.bin proprietary
adb pull /system/usr/keychars/s3c-keypad-rev0040.kcm.bin proprietary
adb pull /system/usr/keychars/s3c-keypad-rev0050.kcm.bin proprietary
adb pull /system/usr/keychars/sec_jack.kcm.bin proprietary
adb pull /system/usr/keylayout/AVRCP.kl proprietary
adb pull /system/usr/keylayout/melfas-touchkey.kl proprietary
adb pull /system/usr/keylayout/qwerty.kl proprietary
adb pull /system/usr/keylayout/s3c-keypad.kl proprietary
adb pull /system/usr/keylayout/sec_jack.kl proprietary

exit
adb pull /system/lib/egl/libEGL_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/egl/libGLESv2_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/hw/gralloc.s5pc110.so proprietary
adb pull /system/lib/hw/lights.default.so proprietary
adb pull /system/lib/hw/sensors.SCH-I500.so proprietary
adb pull /system/lib/libHPImgApi.so proprietary
adb pull /system/lib/libIMGegl.so proprietary
adb pull /system/lib/libbattd.so proprietary
adb pull /system/lib/libglslcompiler.so proprietary
adb pull /system/lib/libgtalk_jni.so proprietary
adb pull /system/lib/libmoto_ril.so proprietary
adb pull /system/lib/liboemcamera.so proprietary
adb pull /system/lib/libomx_wmadec_sharedlibrary.so proprietary
adb pull /system/lib/libomx_wmvdec_sharedlibrary.so proprietary
adb pull /system/lib/libpppd_plugin-ril.so proprietary
adb pull /system/lib/libpvasfcommon.so proprietary
adb pull /system/lib/libpvasflocalpb.so proprietary
adb pull /system/lib/libpvasflocalpbreg.so proprietary
adb pull /system/lib/libpvr2d.so proprietary
adb pull /system/lib/libpvrANDROID_WSEGL.so proprietary
adb pull /system/lib/libspeech.so proprietary
adb pull /system/lib/libsrv_um.so proprietary
adb pull /system/lib/libLCML.so proprietary
adb pull /system/lib/libOMX.TI.AAC.encode.so proprietary
adb pull /system/lib/libOMX.TI.AMR.encode.so proprietary
adb pull /system/lib/libOMX.TI.JPEG.Encoder.so proprietary
adb pull /system/lib/libOMX.TI.Video.Decoder.so proprietary
adb pull /system/lib/libOMX.TI.Video.encoder.so proprietary
adb pull /system/lib/libOMX.TI.WBAMR.encode.so proprietary
adb pull /system/lib/libOMX_Core.so proprietary
adb pull /system/lib/libPERF.so proprietary
adb pull /system/lib/libVendor_ti_omx.so proprietary
adb pull /system/lib/libVendor_ti_omx_config_parser.so proprietary
adb pull /system/lib/libopencore_author.so proprietary
