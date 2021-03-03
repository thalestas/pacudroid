#
# Copyright (C) 2011 The Android Open-Source Project
# Copyright (C) 2015 Chris Simmonds, chris@2net.co.uk
# Copyright (C) 2019-2020 François-Denis Gonthier, francois-denis.gonthier@opersys.com
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

# Use beaglebone camera cape as default
BOARD_HAVE_CAMERA_CAPE := true

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := generic

BOARD_HAVE_BLUETOOTH := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := omap3
TARGET_BOOTLOADER_BOARD_NAME := beagleboneblack
BOARD_USB_CAMERA := true
USE_OPENGL_RENDERER := true
USE_XML_AUDIO_POLICY_CONF := 1
WITH_DEXPREOPT := true
MALLOC_SVELTE := true
USE_CAMERA_V4L2_HAL := true
TARGET_SYSTEM_PROP := device/beagleboard/beagleboneblack/system.prop

# We're using 4.19, which gets rid of the 32 bit Binder interface.
TARGET_USES_64_BIT_BINDER := true

BOARD_USES_VENDORIMAGE := true

TARGET_COPY_OUT_VENDOR := vendor

# Vendor Interface Manifest
DEVICE_MANIFEST_FILE := device/beagleboard/beagleboneblack/manifest.xml

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

BOARD_SEPOLICY_DIRS += device/beagleboard/beagleboneblack/sepolicy

PRODUCT_COMPATIBLE_PROPERTY := false

ifneq ($(filter beagleboneblack_sd,$(TARGET_PRODUCT)),)
include device/beagleboard/beagleboneblack/BoardConfigSd.mk
else
ifneq ($(filter pacudroid_sd,$(TARGET_PRODUCT)),)
include device/pacu/pacudroid/BoardConfigSd.mk
else
ifneq ($(filter beagleboneblack_emmc,$(TARGET_PRODUCT)),)
include device/beagleboard/beagleboneblack/BoardConfigEmmc.mk
endif
endif
endif
