#
# Copyright (C) 2024 Lineage Android
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),fogos)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif