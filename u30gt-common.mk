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

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi xlarge sw600dp sw720dp
PRODUCT_AAPT_PREF_CONFIG := xlarge

TARGET_BOOTANIMATION_NAME := horizontal-1280x800

PRODUCT_COPY_FILES := \
    $(LOCAL_PATH)/init.u30gt.rc:root/init.u30gt.rc \
    $(LOCAL_PATH)/ueventd.u30gt.rc:root/ueventd.u30gt.rc \
    $(LOCAL_PATH)/init.u30gt.usb.rc:root/init.u30gt.usb.rc
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/keylayout/rk29-keypad.kl:system/usr/keylayout/rk29-keypad.kl
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/fw_RK903.bin:system/etc/firmware/fw_RK903.bin \
    $(LOCAL_PATH)/firmware/fw_RK903_p2p.bin:system/etc/firmware/fw_RK903_p2p.bin \
    $(LOCAL_PATH)/firmware/fw_RK903_apsta.bin:system/etc/firmware/fw_RK903_apsta.bin \
    $(LOCAL_PATH)/firmware/nvram_RK903.cal:system/etc/firmware/nvram_RK903.cal \
    $(LOCAL_PATH)/firmware/nvram_RK903_26M.cal:system/etc/firmware/fw_RK903_26M.bin \
    $(LOCAL_PATH)/firmware/rk903.hcd:system/etc/firmware/rk903.hcd \
    $(LOCAL_PATH)/firmware/rk903_26M.hcd:system/etc/firmware/rk903_26M.hcd \
    $(LOCAL_PATH)/firmware/nvram_RK903.txt:system/etc/firmware/nvram_RK903.txt
    
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/akmd8975:system/bin/akmd8975
    
PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

PRODUCT_PACKAGES += \
        audio.a2dp.default \
        libaudioutils
        
# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory
    
# Filesystem management tools
PRODUCT_PACKAGES += \
	make_ext4fs \
	setup_fs

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)


PRODUCT_PROPERTY_OVERRIDES := \
    service.adb.root=1 \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1
    
$(call inherit-product, build/target/product/full_base.mk)
    
