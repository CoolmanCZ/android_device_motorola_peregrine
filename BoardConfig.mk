#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# inherit from common msm8226-common
-include device/motorola/msm8226-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/peregrine

# Vendor Unification Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_peregrine
TARGET_RECOVERY_DEVICE_MODULES := libinit_peregrine

# Assert
TARGET_OTA_ASSERT_DEVICE := peregrine,peregrine_umts,peregrine_udstv,peregrine_umtsds,peregrine_retaildsds,XT1068,XT1064,XT1063,XT1069

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Kernel
TARGET_KERNEL_CONFIG := peregrine_defconfig

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10444800
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1157627904
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5912772608
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 560070656

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# inherit from the proprietary version
-include vendor/motorola/peregrine/BoardConfigVendor.mk
