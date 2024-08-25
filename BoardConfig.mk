#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/fogos

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := fogos

# Display
TARGET_SCREEN_DENSITY := 280

# HIDL
ODM_MANIFEST_SKUS += b d dn n
ODM_MANIFEST_B_FILES := $(DEVICE_PATH)/sku/manifest_b.xml
ODM_MANIFEST_D_FILES := $(DEVICE_PATH)/sku/manifest_d.xml
ODM_MANIFEST_DN_FILES := $(DEVICE_PATH)/sku/manifest_dn.xml
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/sku/manifest_n.xml

# Kernel
TARGET_KERNEL_CONFIG += vendor/fogos_defconfig

# Kernel Modules - Vendor Boot
BOARD_VENDOR_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load))
BOARD_VENDOR_KERNEL_MODULES_BLOCKLIST_FILE := $(DEVICE_PATH)/modules.blocklist
BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
BOOT_KERNEL_MODULES := $(BOARD_VENDOR_RAMDISK_RECOVERY_KERNEL_MODULES_LOAD)
BOARD_GENERIC_RAMDISK_KERNEL_MODULES_LOAD := $(strip $(shell cat $(DEVICE_PATH)/modules.load.recovery))
RECOVERY_KERNEL_MODULES := $(BOARD_GENERIC_RAMDISK_KERNEL_MODULES_LOAD)

# Kernel Modules - WLAN
TARGET_MODULE_ALIASES += \
    wlan.ko:qca_cld3_wlan.ko

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 90
