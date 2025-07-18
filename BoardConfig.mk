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

## Inherit from the common tree
include device/samsung/m135fu-common/BoardConfigCommon.mk

## Inherit from the proprietary configuration
include vendor/samsung/m135fu/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/m135fu

## APEX image
DEXPREOPT_GENERATE_APEX_IMAGE := true

## OTA TARGET
TARGET_OTA_ASSERT_DEVICE := m135fu

## Kernel
TARGET_KERNEL_CONFIG := exynos850-m135fusnsxx_defconfig

## Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

BOARD_WLAN_DEVICE            := slsi
BOARD_WPA_SUPPLICANT_DRIVER  := NL80211
BOARD_HOSTAPD_DRIVER         := NL80211
WIFI_DRIVER_FW_PATH_PARAM    := "/sys/module/wlan/parameters/fwpath"
WPA_SUPPLICANT_VERSION := VER_0_8_X
PRODUCT_USES_PREBUILT_MAINLINE_MODULES := false
PRODUCT_PACKAGES_REMOVE += \
    android.net.ipsec.ike \
    com.android.ipsec \
    android.net.ipsec.ike.stubs \
    android.net.ipsec.ike.stubs.module_lib \
    android.net.ipsec.ike.stubs.module_lib.from-text

