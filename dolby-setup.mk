    #  Copyright 2016 The Android Open Source Project
    #  Licensed under the Apache License, Version 2.0 (the "License");
    #  you may not use this file except in compliance with the License.
    #  You may obtain a copy of the License at
    #       http://www.apache.org/licenses/LICENSE-2.0
    #  Unless required by applicable law or agreed to in writing, software
    #  distributed under the License is distributed on an "AS IS" BASIS,
    #  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    #  See the License for the specific language governing permissions and
    #  limitations under the License.
    #  This file was modified by Dolby Laboratories, Inc. The portions of the
    #  code that are surrounded by "DOLBY..." are copyrighted and
    #  licensed separately, as follows:
    #  (C) 2018 Dolby Laboratories, Inc.
    #  All rights reserved.
    #  This program is protected under international and U.S. Copyright laws as
    #  an unpublished work. This program is confidential and proprietary to the
    #  copyright owners. Reproduction or disclosure, in whole or in part, or the
    #  production of derivative works therefrom without the express permission of
    #  the copyright owners is prohibited.

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
   hardware/motorolaDolby

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Exclude AOSP AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += hardware/motorolaDolby/sepolicy/vendor

# HIDL
DEVICE_MANIFEST_FILE += hardware/motorolaDolby/configs/vendor.dolby.hardware.dms@2.0-service.xml

# Configs
PRODUCT_COPY_FILES += \
    hardware/motorolaDolby/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    hardware/motorolaDolby/configs/dolby/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

# Dolby properties
PRODUCT_VENDOR_PROPERTIES += \
    persist.vendor.audio_fx.current=dolby \
    vendor.audio.dolby.ds2.enabled=false \
    vendor.audio.dolby.ds2.hardbypass=false \
    ro.vendor.audio.dolby.dax.support=true \
    ro.vendor.dolby.no_custom_profile=true \
    ro.vendor.dolby.dax.version=DAX3_3.8.5.20_r1

# DaxUI, daxService & motorola configurations
PRODUCT_PACKAGES += \
    daxService \
    MotoDolbyDax3 \
    MotorolaSettingsProvider \
    moto-checkin \
    moto-settings \
    moto \
    MotoSignatureApp \
    com.motorola.frameworks.core.addon \
    com.motorola.motosignature

# Proprietary blobs
PRODUCT_COPY_FILES += \
	hardware/motorolaDolby/proprietary/odm/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service:$(TARGET_COPY_OUT_ODM)/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.frameworks.core.addon.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.motosignature.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/com.motorola.software.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.software.dolbyui.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-checkin.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-settings.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/moto.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/privapp-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.android.providers.settings.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/sysconfig/config-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.android.providers.settings.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    hardware/motorolaDolby/proprietary/system_ext/etc/sysconfig/config-com.motorola.motosignature.app.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.motosignature.app.xml \
    hardware/motorolaDolby/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    hardware/motorolaDolby/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    hardware/motorolaDolby/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    hardware/motorolaDolby/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    hardware/motorolaDolby/proprietary/vendor/lib/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ac4dec.so \
    hardware/motorolaDolby/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    hardware/motorolaDolby/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    hardware/motorolaDolby/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    hardware/motorolaDolby/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    hardware/motorolaDolby/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    hardware/motorolaDolby/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libstagefright_soft_ac4dec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ac4dec.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    hardware/motorolaDolby/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so