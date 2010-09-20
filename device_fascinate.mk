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

# This is the list of apps included in the generic AOSP build
PRODUCT_NAME := fascinate
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := fascinate
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung
PRODUCT_POLICY := android.policy_phone
PRODUCT_PROPERTY_OVERRIDES += \
		ro.config.notification_sound=OnTheHunt.ogg \
		ro.config.alarm_alert=Alarm_Classic.ogg \
		ro.com.android.wifi-watchlist=GoogleGuest \
		ro.error.receiver.system.apps=com.google.android.feedback \
		ro.setupwizard.enterprise_mode=1 \
		ro.com.google.clientidbase=android-verizon \
		ro.com.google.locationfeatures=1 \
		ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
		ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
		ro.config.ringtone=CaribbeanIce.ogg \
		ro.setupwizard.mode=OPTIONAL \
		ro.cdma.home.operator.numeric=310004 \
		ro.cdma.home.operator.alpha=Verizon \
		ro.cdma.homesystem=64,65,76,77,78,79,80,81,82,83 \
		ro.cdma.data_retry_config=default_randomization=2000,0,0,120000,180000,540000,960000 \
		ro.config.vc_call_vol_steps=7 \
		ro.cdma.otaspnumschema=SELC,1,80,99 \
		ro.telephony.call_ring.multiple=false \
		ro.telephony.call_ring.delay=3000 \
		ro.url.safetylegal=http://www.motorola.com/staticfiles/Support/legal/?model=A855 \
		ro.setupwizard.enable_bypass=1 \
		dalvik.vm.dexopt-flags=m=y \
		net.bt.name=Android \
		ro.config.sync=yes \
		dalvik.vm.stack-trace-file=/data/anr/traces.txt
