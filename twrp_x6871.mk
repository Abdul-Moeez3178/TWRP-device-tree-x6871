#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/infinix/x6871

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

PRODUCT_DEVICE := x6871
PRODUCT_NAME := twrp_x6871
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix GT 20 Pro
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

ENABLE_VIRTUAL_AB := true

BOARD_BOOT_HEADER_VERSION := 4

BOARD_STORE_RAMDISK_IN_VENDORBOOT := true

BOARD_USES_MTK_HARDWARE := true

TW_NO_FASTBOOT_BOOT := true

BOARD_VENDOR_BOOTIMAGE_PARTITION_SIZE := 67108864

PRODUCT_PROPERTY_OVERRIDES += \
    ro.twrp.vendor_boot=true \
    persist.sys.fuse.passthrough.enable=true
