#
# Copyright (C) 2020-2024 The LineageOS Project
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

# Inherit from the common tree
$(call inherit-product, device/samsung/m135fu-common/common.mk)
PRODUCT_USES_PREBUILT_MAINLINE_MODULES := false
PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false
PRODUCT_BUILD_MAINLINE_MODULES := false
PRODUCT_SYSTEM_SERVER_JARS := framework
PRODUCT_BOOT_JARS := framework

# Inherit proprietary files
$(call inherit-product, vendor/samsung/m135fu/m135fu-vendor.mk)

# Setup dalvik vm configs
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)

PRODUCT_DEX_PREOPT_DEFAULT := false
PRODUCT_PACKAGES_REMOVE += hostapd
PRODUCT_PACKAGES_REMOVE += \
    android.net.ipsec.ike \
    com.android.ipsec \
    android.net.ipsec.ike.stubs \
    android.net.ipsec.ike.stubs.module_lib \
    android.net.ipsec.ike.stubs.module_lib.from-text \
    framework-bluetooth.stubs.module_lib.from-text \
    framework-bluetooth.stubs.module_lib \
    com.android.ipsec \
    com.android.bluetooth \
    framework-permission-s.stubs.module_lib.from-text \
    framework-permission-s.stubs.module_lib \
    com.android.permission \
    framework-pdf \
    framework-pdf-v \
    framework-mediaprovider
