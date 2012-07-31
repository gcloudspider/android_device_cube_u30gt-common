#
# Copyright (C) 2012 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk

BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_AUDIO_LEGACY := true
USE_CAMERA_STUB := true

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_CMDLINE := 
BOARD_PAGE_SIZE := 16384

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := rk30xx
TARGET_BOOTLOADER_BOARD_NAME := u30gt

BOARD_EGL_CFG := device/cube/u30gt-common/egl.cfg

#BOARD_USES_HGL := true
#BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

BOARD_USES_AUDIO_LEGACY := true

TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

#BOARD_CUSTOM_RECOVERY_KEYMAPPING := $(LOCAL_PATH)/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

# override recovery init.rc
TARGET_RECOVERY_INITRC := device/cube/u30gt-common/recovery/init.rc

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

# device-specific extensions to the updater binary
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 131072

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := RK903

WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/wlan/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA     := "/system/etc/firmware/fw_RK903.bin"
WIFI_DRIVER_FW_PATH_AP      := "/system/etc/firmware/fw_RK903_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P     := "/system/etc/firmware/fw_RK903_p2p.bin"
WIFI_DRIVER_MODULE_NAME     := "RK903"
WIFI_DRIVER_MODULE_ARG      := "iface_name=wlan0 firmware_path=/system/etc/firmware/fw_RK903.bin nvram_path=/system/etc/firmware/nvram_RK903.cal"

BOARD_HAVE_BLUETOOTH := true