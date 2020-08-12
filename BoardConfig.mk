#
# Copyright (C) 2017 The Android Open Source Project
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
#

LOCAL_PATH := device/nokia/NB1

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

# Platform
TARGET_BOARD_PLATFORM := msm8998
TARGET_BOARD_PLATFORM_GPU := qcom-adreno540
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8998
TARGET_NO_BOOTLOADER := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE := Nokia8,nokia8,Nokia_8,nokia_8,NB1,nb1,Nokia_NB1,nokia_nb1,nokia_NB1,Nokia_nb1,Nokia_Eight,Nokia_eight,nokia_eight,nokia_Eight

# Kernel
BOARD_KERNEL_IMAGE_NAME  := Image.gz-dtb
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_CMDLINE 	 := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 
BOARD_KERNEL_CMDLINE	 += androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_OFFSET      := 0x00008000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
BOARD_SECOND_OFFSET      := 0x00f00000
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_PREBUILT_KERNEL   := $(LOCAL_PATH)/prebuilt/Image.gz-dtb
TARGET_NO_KERNEL := false

# Encryption
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true
PLATFORM_SECURITY_PATCH := 2025-12-31

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3758096384
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55503544320
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_ROOT_EXTRA_FOLDERS := bt_firmware dsp firmware persist odm
BOARD_FLASH_BLOCK_SIZE := 0x20000
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# TWRP Configuration
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXTRA_LANGUAGES := true
TW_HAS_EDL_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true

#shrp flags
SHRP_PATH := device/nokia/NB1
SHRP_MAINTAINER := emufan4568
SHRP_DEVICE_CODE := NB1
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_AB := true
SHRP_DEVICE_TYPE := A/B
SHRP_REC := DUMMY
SHRP_REC_TYPE := Universal
SHRP_OFFICIAL := true
SHRP_EXPRESS := true
SHRP_DARK := true
#SHRP_NO_SAR_AUTOMOUNT := true

# Disable Mouse Cursor
TW_INPUT_BLACKLIST := "hbtp_vm"

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := system/vendor
