#
# Copyright (C) 2009 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS := vendor/samsung/vibrant/overlay

# This is the list of apps included in the generic AOSP build
PRODUCT_PROPERTY_OVERRIDES += \
		ro.media.enc.hprof.file.format=3gp
		ro.media.enc.lprof.file.format=3gp
		ro.media.enc.hprof.codec.vid=m4v
		ro.media.enc.lprof.codec.vid=m4v
		ro.media.enc.hprof.codec.aud=amrnb
		ro.media.enc.lprof.codec.aud=amrnb
		ro.media.enc.hprof.vid.width=352
		ro.media.enc.lprof.vid.width=320
		ro.media.enc.hprof.vid.height=288
		ro.media.enc.lprof.vid.height=240
		ro.media.enc.hprof.vid.fps=15
		ro.media.enc.lprof.vid.fps=15
		ro.media.enc.hprof.vid.bps=400000
		ro.media.enc.lprof.vid.bps=130000
		ro.media.enc.hprof.aud.bps=23450
		ro.media.enc.lprof.aud.bps=23450
		ro.media.enc.hprof.aud.ch=1
		ro.media.enc.lprof.aud.ch=1
		ro.media.enc.hprof.aud.hz=8000
		ro.media.enc.lprof.aud.hz=8000
		ro.media.dec.video_sync_margins=-40,30
		keyguard.no_require_sim=true
		windowsmgr.max_events_per_sec=60
		windowsmgr.support_rotation_270=true
		ro.com.google.clientidbase=android-verizon
		ro.com.google.clientidbase.yt=android-verizon
		ro.com.google.clientidbase.am=android-verizon
		ro.com.google.clientidbase.vs=android-verizon
		ro.com.google.clientidbase.gmm=android-verizon
		ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html
		ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html
		ro.com.google.locationfeatures=1
		ro.setupwizard.mode=DISABLED
		ro.com.google.gmsversion=2.1_r7
		ro.config.ringtone=01_Vzw_Default.ogg
		ro.config.notification_sound=02_Haze.ogg
		ro.config.alarm_alert=Good_Morning.ogg
		ro.config.ringtone=Popple_Tone.ogg
		ro.config.notification_sound=F1_New_SMS.ogg
		ro.config.alarm_alert=Alarm_Classic.ogg
		net.bt.name=Android
		ro.config.sync=yes
		dalvik.vm.stack-trace-file=/data/anr/traces.txt
