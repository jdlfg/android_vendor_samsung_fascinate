#!/bin/sh

rm -rf proprietary
mkdir -p proprietary

adb pull /system/lib/libgps.so proprietary
adb pull /system/lib/libaudio.so proprietary
adb pull /system/lib/libaudiopolicy.so proprietary
adb pull /system/lib/libcamera.so proprietary
adb pull /system/lib/libril.so proprietary
adb pull /system/lib/libRS.so proprietary
adb pull /system/lib/librs_jni.so proprietary
adb pull /system/lib/libpvrANDROID_WSEGL.so proprietary

adb pull /system/framework/sechardware.jar proprietary
adb pull /system/framework/seccamera.jar proprietary
adb pull /system/framework/com.pv.extensions.jar proprietary
adb pull /system/framework/com.google.android.maps.jar proprietary
adb pull /system/framework/com.google.android.gtalkservice.jar proprietary
adb pull /system/framework/com.google.android.datamessaging.jar proprietary
adb pull /system/framework/sec_feature.jar proprietary
adb pull /system/framework/com.samsung.device.jar proprietary
adb pull /system/framework/com.pv.PVWmdrmClient.jar proprietary

adb pull /system/bin/pvrsrvinit proprietary
adb pull /system/bin/BCM4329B1_002.002.023.0417.0464.hcd proprietary
adb pull /system/bin/bluetoothd proprietary
adb pull /system/bin/bootanimation2nd proprietary
adb pull /system/bin/btld proprietary
adb pull /system/bin/charging_mode proprietary
adb pull /system/bin/drexe proprietary
adb pull /system/bin/drm_android_siso_test proprietary
adb pull /system/bin/drm_sqlite3_test proprietary
adb pull /system/bin/fota_pipe proprietary
adb pull /system/bin/gpsd/glgps_samsungJupiter proprietary
adb pull /system/bin/grabmem proprietary
adb pull /system/bin/hciattach proprietary
adb pull /system/bin/immvbsd proprietary
adb pull /system/bin/immvibed proprietary
adb pull /system/bin/npsmobex proprietary
adb pull /system/bin/PCInternet proprietary
adb pull /system/bin/playlogo proprietary
adb pull /system/bin/playlogos1 proprietary
adb pull /system/bin/playlpm proprietary
adb pull /system/bin/pppd_runner proprietary
adb pull /system/bin/pv2way_omx_engine_test proprietary
adb pull /system/bin/pvplayer_engine_test proprietary
adb pull /system/bin/rilclient-test proprietary
adb pull /system/bin/sensorcalibutil_yamaha proprietary
adb pull /system/bin/sensorserver_yamaha proprietary
adb pull /system/bin/sensorstatutil_yamaha proprietary
adb pull /system/bin/si4709_test proprietary
adb pull /system/bin/test_pvauthorengine proprietary
adb pull /system/bin/vold proprietary
adb pull /system/bin/wlp2pservice proprietary
adb pull /system/bin/wlservice proprietary
adb pull /system/bin/wm8994 proprietary
adb pull /system/bin/wpa_cli proprietary
adb pull /system/bin/wpa_supplicant proprietary

adb pull /system/cameradata/datapattern_420sp.yuv proprietary
adb pull /system/cameradata/datapattern_front_420sp.yuv proprietary

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
adb pull /system/etc/01_pv_omx_wrapper.yac proprietary
adb pull /system/etc/amazon-kindle.properties proprietary
adb pull /system/etc/asound.conf proprietary
adb pull /system/etc/audio/lmfilter.txt proprietary
adb pull /system/etc/audio/stream_headset.txt proprietary
adb pull /system/etc/audio/stream_speaker.txt proprietary
adb pull /system/etc/audio/situation.txt proprietary
adb pull /system/etc/audio/stream_earpiece.txt proprietary
adb pull /system/etc/audio/srstunning.txt proprietary
adb pull /system/etc/audio/aeqcoe.txt proprietary
adb pull /system/etc/audio/soundbooster.txt proprietary
adb pull /system/etc/built-in-app.xml proprietary
adb pull /system/etc/cdma-carriers-conf.xml proprietary
adb pull /system/etc/dhcpcd/dhcpcd.conf proprietary
adb pull /system/etc/enable_eth.sh proprietary
adb pull /system/etc/enable_ppp.sh proprietary
adb pull /system/etc/init.cdma-pppd proprietary
adb pull /system/etc/init.gprs-pppd proprietary
adb pull /system/etc/initialize_nat.sh proprietary
adb pull /system/etc/jupiter.xml proprietary
adb pull /system/etc/kies/Memo.xml proprietary
adb pull /system/etc/kies/Device.xml proprietary
adb pull /system/etc/kies/Contents.xml proprietary
adb pull /system/etc/kies/Message.xml proprietary
adb pull /system/etc/kies/Calendar.xml proprietary
adb pull /system/etc/kies/Phonebook.xml proprietary
adb pull /system/etc/melfas/MELFAS_FIRM.bin proprietary
adb pull /system/etc/melfas/S1Q_MELFAS_FIRM.bin proprietary
adb pull /system/etc/min_value.txt proprietary
adb pull /system/etc/mtpdb.yac proprietary
adb pull /system/etc/nuance/str_enus.bin proprietary
adb pull /system/etc/nuance/img_enus.bin proprietary
adb pull /system/etc/nuance/lvr_enus.bin proprietary
adb pull /system/etc/nuance/img_esmx.bin proprietary
adb pull /system/etc/nuance/lvr_esmx.bin proprietary
adb pull /system/etc/nuance/prm_enus.bin proprietary
adb pull /system/etc/nuance/prm_esmx.bin proprietary
adb pull /system/etc/nuance/vst_config_vzw.bin proprietary
adb pull /system/etc/nuance/str_esmx.bin proprietary
adb pull /system/etc/permissions/android.hardware.wifi.xml proprietary
adb pull /system/etc/permissions/com.blockbuster.lib.xml proprietary
adb pull /system/etc/permissions/com.cequint.platform.xml proprietary
adb pull /system/etc/permissions/com.google.android.datamessaging.xml proprietary
adb pull /system/etc/permissions/com.google.android.gtalkservice.xml proprietary
adb pull /system/etc/permissions/com.google.android.maps.xml proprietary
adb pull /system/etc/permissions/com.pv.extensions.xml proprietary
adb pull /system/etc/permissions/com.pv.PVWmdrmClient.xml proprietary
adb pull /system/etc/permissions/com.samsung.device.xml proprietary
adb pull /system/etc/permissions/handheld_core_hardware.xml proprietary
adb pull /system/etc/permissions/mobileap.xml proprietary
adb pull /system/etc/permissions/samsung.feature.octa.xml proprietary
adb pull /system/etc/permissions/seccamera.xml proprietary
adb pull /system/etc/permissions/sec_feature.xml proprietary
adb pull /system/etc/permissions/sec_hardware_library.xml proprietary
adb pull /system/etc/PowerOn.wav proprietary
adb pull /system/etc/ppp/chap-secrets proprietary
adb pull /system/etc/ppp/ip-down proprietary
adb pull /system/etc/ppp/ip-up proprietary
adb pull /system/etc/ppp/pap-secrets proprietary
adb pull /system/etc/purenandpackages_pref.txt proprietary
adb pull /system/etc/purenandpackages.txt proprietary
adb pull /system/etc/pvasflocal.yac proprietary
adb pull /system/etc/pvasfstreaming.yac proprietary
adb pull /system/etc/pvextensions.yac proprietary
adb pull /system/etc/pvOMXcfg.ini proprietary
adb pull /system/etc/pvplayer2.yac proprietary
adb pull /system/etc/pvwmdrm.yac proprietary
adb pull /system/etc/security/cert.cp proprietary
adb pull /system/etc/SPRINT_PRIVACY_es.html proprietary
adb pull /system/etc/SPRINT_PRIVACY.html proprietary
adb pull /system/etc/tethering_enable.sh proprietary
adb pull /system/etc/verizon_i500.iso proprietary
adb pull /system/etc/vzwandroiddebug.cert proprietary
adb pull /system/etc/vzwtrustcert.bks proprietary
adb pull /system/etc/wifi/nvram_mfg.txt proprietary
adb pull /system/etc/wifi/nvram_net.txt proprietary
adb pull /system/etc/wifi/wifi.conf proprietary
adb pull /system/etc/wifi/wpa_supplicant.conf proprietary

adb pull /system/firmware/CE147F00.bin proprietary
adb pull /system/firmware/CE147F01.bin proprietary
adb pull /system/firmware/CE147F02.bin proprietary
adb pull /system/firmware/CE147F03.bin proprietary

adb pull /system/lib/libwm8994.so proprietary
adb pull /system/lib/libsamsunglmeq.so proprietary
adb pull /system/lib/liba2dp.so proprietary
adb pull /system/lib/libsecril-client.so proprietary
adb pull /system/lib/libs3cjpeg.so proprietary
adb pull /system/lib/liba2dp.so proprietary
adb pull /system/lib/libActionShot.so proprietary
adb pull /system/lib/libarccamera.so proprietary
adb pull /system/lib/libbluedroid.so proprietary
adb pull /system/lib/libbluetoothd.so proprietary
adb pull /system/lib/libbluetooth.so proprietary
adb pull /system/lib/libcamerafirmwarejni.so proprietary
adb pull /system/lib/libCaMotion.so proprietary
adb pull /system/lib/libcaps.so proprietary
adb pull /system/lib/libDHWR.so proprietary
adb pull /system/lib/libdiscjni.so proprietary
adb pull /system/lib/libdivxdrm.so proprietary
adb pull /system/lib/libdivx_jni.so proprietary
adb pull /system/lib/libdme_main.so proprietary
adb pull /system/lib/lib_Down_Sampler_ARM_GA_Library.so proprietary
adb pull /system/lib/libdrm2_jni.so proprietary
adb pull /system/lib/libflashlite_jni.so proprietary
adb pull /system/lib/libflashlitepackage.so proprietary
adb pull /system/lib/libflashliteplugin.so proprietary
adb pull /system/lib/libglslcompiler.so proprietary
adb pull /system/lib/libgps.so proprietary
adb pull /system/lib/libgtalk_jni.so proprietary
adb pull /system/lib/libIcs.so proprietary
adb pull /system/lib/libIMGegl.so proprietary
adb pull /system/lib/libImmVbs.so proprietary
adb pull /system/lib/libImmVibeJ.so proprietary
adb pull /system/lib/libImmVibe.so proprietary
adb pull /system/lib/liblwfa-0.8.2.so proprietary
adb pull /system/lib/liblwfa-0.A.2-mng-p1.so proprietary
adb pull /system/lib/liblwfa-O.7.so proprietary
adb pull /system/lib/libmnglw-0.8.2.so proprietary
adb pull /system/lib/libms3c_yamaha.so proprietary
adb pull /system/lib/libmtp_jni.so proprietary
adb pull /system/lib/libmtp.so proprietary
adb pull /system/lib/libomadrm.so proprietary
adb pull /system/lib/libomx_evrcdec_sharedlibrary.so proprietary
adb pull /system/lib/libomx_evrcenc_sharedlibrary.so proprietary
adb pull /system/lib/libomx_qcelpdec_sharedlibrary.so proprietary
adb pull /system/lib/libomx_qcelpenc_sharedlibrary.so proprietary
adb pull /system/lib/libopencore_2way.so proprietary
adb pull /system/lib/libPanoraMax1.so proprietary
adb pull /system/lib/libPlusMe.so proprietary
adb pull /system/lib/libpvdivxdrm.so proprietary
adb pull /system/lib/libpvr2d.so proprietary
adb pull /system/lib/libpvrANDROID_WSEGL.so proprietary
adb pull /system/lib/libPVRScopeServices.so proprietary
adb pull /system/lib/libpvwmdrm.so proprietary
adb pull /system/lib/libQmageDecoder.so proprietary
adb pull /system/lib/libquramgifmovie.so proprietary
adb pull /system/lib/libquramimagecodec.so proprietary
adb pull /system/lib/libquramvdecoder.so proprietary
adb pull /system/lib/lib_R2VS_ARM_GA_Library_for_Aries.so proprietary
adb pull /system/lib/libs263domxoc.so proprietary
adb pull /system/lib/libs263eomxoc.so proprietary
adb pull /system/lib/libs264domxoc.so proprietary
adb pull /system/lib/libs264eomxoc.so proprietary
adb pull /system/lib/libs3cjpeg.so proprietary
adb pull /system/lib/libsaacdomxoc.so proprietary
adb pull /system/lib/libsaaceomxoc.so proprietary
adb pull /system/lib/libsac3domxoc.so proprietary
adb pull /system/lib/libsamrdomxoc.so proprietary
adb pull /system/lib/libsamreomxoc.so proprietary
adb pull /system/lib/libsAMRNB.so proprietary
adb pull /system/lib/libsAMRWB.so proprietary
adb pull /system/lib/libsamsung_http_file.so proprietary
adb pull /system/lib/libsamsung_http.so proprietary
adb pull /system/lib/libsamsunglmeq.so proprietary
adb pull /system/lib/libsamsung_psi.so proprietary
adb pull /system/lib/libsamsungr2vs.so proprietary
adb pull /system/lib/libsavidocn.so proprietary
adb pull /system/lib/libsavidreg.so proprietary
adb pull /system/lib/libsavsac.so proprietary
adb pull /system/lib/libsavscmn.so proprietary
adb pull /system/lib/libsavsff.so proprietary
adb pull /system/lib/libsavsvc.so proprietary
adb pull /system/lib/libscreencapture.so proprietary
adb pull /system/lib/libsdiv3domxoc.so proprietary
adb pull /system/lib/libseccameraadaptor.so proprietary
adb pull /system/lib/libseccamera.so proprietary
adb pull /system/lib/libsecgps.so proprietary
adb pull /system/lib/libSecOMXCore.so proprietary
adb pull /system/lib/libsec-ril40.so proprietary
adb pull /system/lib/libsecril-client.so proprietary
adb pull /system/lib/libsensor_yamaha.so proprietary
adb pull /system/lib/libsensor_yamaha_test.so proprietary
adb pull /system/lib/libsflacdomxoc.so proprietary
adb pull /system/lib/libsflacfdocn.so proprietary
adb pull /system/lib/libsflacfdreg.so proprietary
adb pull /system/lib/libsflvdocn.so proprietary
adb pull /system/lib/libsflvdreg.so proprietary
adb pull /system/lib/libsisodrm.so proprietary
adb pull /system/lib/libsmkvdocn.so proprietary
adb pull /system/lib/libsmkvdreg.so proprietary
adb pull /system/lib/libsmp3domxoc.so proprietary
adb pull /system/lib/libsmp4fmocn.so proprietary
adb pull /system/lib/libsmp4vdomxoc.so proprietary
adb pull /system/lib/libsmp4veomxoc.so proprietary
adb pull /system/lib/libsolocore_common.so proprietary
adb pull /system/lib/libsolocore_downloadreg.so proprietary
adb pull /system/lib/libsolocore_download.so proprietary
adb pull /system/lib/libsolocore_mp4localreg.so proprietary
adb pull /system/lib/libsolocore_mp4local.so proprietary
adb pull /system/lib/libsolocore_net_support.so proprietary
adb pull /system/lib/libsolocore_player.so proprietary
adb pull /system/lib/libsolocore_pvme.so proprietary
adb pull /system/lib/libsolocore_streamingreg.so proprietary
adb pull /system/lib/libsolocore_streaming.so proprietary
adb pull /system/lib/libsolohw.so proprietary
adb pull /system/lib/libsoloomx_sharedlibrary.so proprietary
adb pull /system/lib/libsoloomx_wmadec_sharedlibrary.so proprietary
adb pull /system/lib/libsoloomx_wmvdec_sharedlibrary.so proprietary
adb pull /system/lib/libsoloomx_wrapper_sharedlibrary.so proprietary
adb pull /system/lib/libsolopvasfcommon.so proprietary
adb pull /system/lib/libsolopvasflocalpbreg.so proprietary
adb pull /system/lib/libsolopvasflocalpb.so proprietary
adb pull /system/lib/libsolopvasxparser_extn.so proprietary
adb pull /system/lib/libsolopvdbconfigclass.so proprietary
adb pull /system/lib/libsolopvdb_recovery_utility.so proprietary
adb pull /system/lib/libsolopvdb.so proprietary
adb pull /system/lib/libsolopvdla_extn.so proprietary
adb pull /system/lib/libsolopvgetmetadata_extn.so proprietary
adb pull /system/lib/libsolopviptransport.so proprietary
adb pull /system/lib/libsolopvjanus.so proprietary
adb pull /system/lib/libsolopvmshttp_streamingreg.so proprietary
adb pull /system/lib/libsolopvmshttp_streaming.so proprietary
adb pull /system/lib/libsolopvmtpconfigclass.so proprietary
adb pull /system/lib/libsolopvmtpip.so proprietary
adb pull /system/lib/libsolopvmtp_jni.so proprietary
adb pull /system/lib/libsolopvmtpservice.so proprietary
adb pull /system/lib/libsolopvmtp.so proprietary
adb pull /system/lib/libsolopvmtp_usb_transport.so proprietary
adb pull /system/lib/libsolopvplaybackcontrol_extn.so proprietary
adb pull /system/lib/libsolopvprotocolengine_asfstreamingreg.so proprietary
adb pull /system/lib/libsolopvprotocolengine_asfstreaming.so proprietary
adb pull /system/lib/libsolopvsetparameter_extn.so proprietary
adb pull /system/lib/libsolopvupnp.so proprietary
adb pull /system/lib/libsolopvwmdrm_jni.so proprietary
adb pull /system/lib/libsolopvwmdrmoemsettings.so proprietary
adb pull /system/lib/libsolopvwmdrmservice.so proprietary
adb pull /system/lib/libsolopvwmdrm.so proprietary
adb pull /system/lib/libspeech.so proprietary
adb pull /system/lib/libsrv_init.so proprietary
adb pull /system/lib/libsrv_um.so proprietary
adb pull /system/lib/libsthmb.so proprietary
adb pull /system/lib/libsvc1domxoc.so proprietary
adb pull /system/lib/libsvgplayer.so proprietary
adb pull /system/lib/libswmadomxoc.so proprietary
adb pull /system/lib/libswmfdocn.so proprietary
adb pull /system/lib/libswmfdreg.so proprietary
adb pull /system/lib/libswmv7domxoc.so proprietary
adb pull /system/lib/libswmv8domxoc.so proprietary
adb pull /system/lib/libSwypeCore.so proprietary
adb pull /system/lib/libtiffanyjni.so proprietary
adb pull /system/lib/libusbmode_jni.so proprietary
adb pull /system/lib/libve_jni.so proprietary
adb pull /system/lib/libvideieditor.so proprietary
adb pull /system/lib/lib_VoiceBooster_ARM_GA_Library.so proprietary
adb pull /system/lib/libvolcustomjni.so proprietary
adb pull /system/lib/libvsuite_sharedlib.so proprietary
adb pull /system/lib/libvzw-loc-prov.so proprietary
adb pull /system/lib/libwifitest.so proprietary
adb pull /system/lib/libwldhcp.so proprietary
adb pull /system/lib/libwlp2pclient.so proprietary
adb pull /system/lib/libwlp2penablejni.so proprietary
adb pull /system/lib/libwlp2pjni.so proprietary
adb pull /system/lib/libwlp2pservice.so proprietary
adb pull /system/lib/libwlp2p.so proprietary
adb pull /system/lib/libwlservice.so proprietary
adb pull /system/lib/libwlwpscli.so proprietary
adb pull /system/lib/libwlwps.so proprietary
adb pull /system/lib/libwm8994.so proprietary
adb pull /system/lib/libwmdrm_jni.so proprietary
adb pull /system/lib/libwmdrm.so proprietary
adb pull /system/lib/libwmlscriptcore.so proprietary
adb pull /system/lib/libwtlcore.so proprietary
adb pull /system/lib/SCH-I500/libSwypeCore.so proprietary
adb pull /system/lib/egl/libEGL_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/egl/libGLESv2_POWERVR_SGX540_120.so proprietary
adb pull /system/lib/hw/copybit.s5pc110.so proprietary
adb pull /system/lib/hw/gralloc.s5pc110.so proprietary
adb pull /system/lib/hw/lights.default.so proprietary
adb pull /system/lib/hw/sensors.SCH-I500.so proprietary

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

