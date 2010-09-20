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

# To be included directly by a device_magic_*.mk makefile;
# do not use inherit-product on this file.

$(call inherit-product, build/target/product/generic.mk)
$(call inherit-product, vendor/samsung/fascinate/device_fascinate.mk)

PRODUCT_PACKAGES += \
    DeskClock \
    DownloadProvider \
    Gallery3D \
    GlobalSearch \
    Launcher2 \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    SoundRecorder \
    VisualizationWallpers \
    VoiceDialer \
    libRS \
    librs_jni

PRODUCT_NAME := SCH-I500
PRODUCT_BRAND := verizon
PRODUCT_DEVICE := SCH-I500
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung

# Pick up some sounds
include frameworks/base/data/sounds/AudioPackage4.mk

# This is the list of locales included in AOSP builds
PRODUCT_LOCALES := en_US

# This is a high DPI device, so add the hdpi pseudo-locale
PRODUCT_LOCALES += hdpi