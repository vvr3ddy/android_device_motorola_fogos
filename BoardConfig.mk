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

# Inherit from sm6375-common
include device/motorola/sm6375-common/BoardConfigCommon.mk