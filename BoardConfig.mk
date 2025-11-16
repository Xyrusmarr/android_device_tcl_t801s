#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/tcl/T801S

# Inherit vendor blobs
-include vendor/tcl/T801S/BoardConfigVendor.mk

# ---------------------------------------------------------------
# Architecture
# ---------------------------------------------------------------
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a77
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_VARIANT := cortex-a77
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_USES_64_BIT_BINDER := true
TARGET_CPU_SMP := true

# ---------------------------------------------------------------
# Platform
# ---------------------------------------------------------------
TARGET_BOARD_PLATFORM := lito
TARGET_BOOTLOADER_BOARD_NAME := T801S
TARGET_NO_BOOTLOADER := true

# ---------------------------------------------------------------
# Kernel
# ---------------------------------------------------------------
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS := --header_version=$(BOARD_BOOTIMG_HEADER_VERSION)

# Kernel image format (Usually Image.gz or Image.gz-dtb)
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# ---------------------------------------------------------------
# Partitions
# ---------------------------------------------------------------
BOARD_FLASH_BLOCK_SIZE := 131072  # (4096 * 32)

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000  # 64MB
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x1C0000000
BOARD_VENDORIMAGE_PARTITION_SIZE := 0x078000000
BOARD_PRODUCTIMAGE_PARTITION_SIZE := 0x050000000

BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := -1
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# ---------------------------------------------------------------
# AVB / Verified Boot
# ---------------------------------------------------------------
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flag 3

# ---------------------------------------------------------------
# Recovery
# ---------------------------------------------------------------
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USES_LOGD := true

# ---------------------------------------------------------------
# Display
# ---------------------------------------------------------------
TARGET_USES_HWC2 := true
TARGET_USES_QCOM_BSP := true

# ---------------------------------------------------------------
# Camera
# ---------------------------------------------------------------
USE_CAMERA_STUB := true

# ---------------------------------------------------------------
# SELinux
# ---------------------------------------------------------------
BOARD_SEPOLICY_VERS := 30.0
TARGET_SEPOLICY_DIR := $(DEVICE_PATH)/sepolicy
