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
TARGET_SCREEN_DENSITY := 420

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

# Inherit from sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk
