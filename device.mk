#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm6375-common
$(call inherit-product, device/motorola/sm6375-common/holi.mk)


TARGET_NOT_USE_VENDOR_BOOT := true

# recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/init.recovery.fogos.rc:$(TARGET_COPY_OUT_RECOVERY)/root/init.recovery.fogos.rc
