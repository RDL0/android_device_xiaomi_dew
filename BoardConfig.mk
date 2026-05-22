LOCAL_PATH := device/xiaomi/dew

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_USES_64_BIT_BINDER := true

#32/64 Bit Supporter
TARGET_SUPPORTS_32_BIT_APPS := true
TARGET_SUPPORTS_64_BIT_APPS := true
TARGET_IS_64_BIT := true

# Platform
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := dew
TARGET_NO_KERNEL := false

# Prebuilt Kernel Components
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(LOCAL_PATH)/recovery/root/lib/modules/*.ko)

#Kernel idk
BOARD_KERNEL_IMAGE_NAME := kernel

# Flash Architecture & Partitions (ADJUSTED FOR VIRTUAL A/B)
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_HAS_LARGE_FILESYSTEM := true

# RAMDISK BUILD FLAGS (CRITICAL CHANGES HERE)
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true

# Dynamic Partitions (Virtual A/B Framework)
BOARD_SUPPORTS_VIRTUAL_AB := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Multi-Device Platform Assertions
TARGET_OTA_ASSERT_DEVICE := dew,redmi_15c,poco_c85

# TWRP Configuration Flags
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# System As Root & Ramdisk Variables
TARGET_RECOVERY_DEVICE_DIRS := $(LOCAL_PATH)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/first_stage_ramdisk/fstab.mt6768

