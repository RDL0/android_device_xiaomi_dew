LOCAL_PATH := device/xiaomi/dew

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := mt6768
TARGET_BOOTLOADER_BOARD_NAME := dew
TARGET_NO_KERNEL := false

# Prebuilt Kernel Components (Maps your existing folders)
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb
BOARD_VENDOR_RAMDISK_KERNEL_MODULES := $(wildcard $(LOCAL_PATH)/recovery/root/lib/modules/*.ko)

# Flash Architecture & Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_HAS_LARGE_FILESYSTEM := true

# Dynamic Partitions (Virtual A/B Framework)
BOARD_SUPPORTS_VIRTUAL_AB := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Multi-Device Platform Assertions (Allows flashing on both Redmi 15C & Poco C85)
TARGET_OTA_ASSERT_DEVICE := dew,redmi_15c,poco_c85

# TWRP Configuration Flags
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"

# System As Root & Ramdisk Variables (Maps your first_stage_ramdisk folder)
TARGET_RECOVERY_DEVICE_DIRS := $(LOCAL_PATH)
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/first_stage_ramdisk/fstab.mt6768
