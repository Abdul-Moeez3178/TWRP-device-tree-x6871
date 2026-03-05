#
# Copyright (C) 2022 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/infinix/x6871

ALLOW_MISSING_DEPENDENCIES := true

TARGET_COPY_OUT_VENDOR := vendor
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

BOARD_USES_RECOVERY_AS_BOOT := false

# Architecture
TARGET_ARCH := arm64
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

# Assert
TARGET_OTA_ASSERT_DEVICE := X6871

TW_NO_WARNINGS := true


# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := X6871
TARGET_NO_BOOTLOADER         := true
TARGET_USES_UEFI             := true

# kernel
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
BOARD_DTB_OFFSET := 0x07c08000
BOARD_USES_VENDOR_BOOT := true
BOARD_MOVE_RECOVERY_RESOURCES_TO_VENDOR_BOOT := true

# Hardware
BOARD_USES_MTK_HARDWARE := true

# Platform
TARGET_BOARD_PLATFORM := mt6895

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Display
TARGET_SCREEN_DENSITY := 480
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2460
TW_FRAMERATE := 120
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# boot
BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864
TW_NO_FASTBOOT_BOOT := true
BOARD_KERNEL_IMAGE_NAME := kernel
BOARD_BUILD_DTBO_IMAGE := false

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
TW_USE_FSCRYPT_POLICY := 2
TW_FORCE_KEYMASTER_VER := true
TW_PREPARE_DATA_MEDIA_EARLY := true



