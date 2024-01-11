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

MOTODOLBY_PATH := hardware/Motorola/Dolby

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += $(MOTODOLBY_PATH)

# Enable codec support
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# Exclude AOSP AudioFX
TARGET_EXCLUDES_AUDIOFX := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(MOTODOLBY_PATH)/sepolicy/vendor

# Configs
PRODUCT_COPY_FILES += \
    $(MOTODOLBY_PATH)/configs/dolby/dax-default.xml:$(TARGET_COPY_OUT_VENDOR)/etc/dolby/dax-default.xml \
    $(MOTODOLBY_PATH)/configs/dolby/media_codecs_dolby_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_dolby_audio.xml

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
    $(MOTODOLBY_PATH)/proprietary/odm/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service:$(TARGET_COPY_OUT_ODM)/bin/hw/vendor.dolby_v3_6.hardware.dms360@2.0-service \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.frameworks.core.addon.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.frameworks.core.addon.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.motosignature.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.motosignature.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/com.motorola.software.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/com.motorola.software.dolbyui.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/moto-checkin.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-checkin.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/moto-settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto-settings.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/moto.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/moto.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.dolby.daxservice.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.android.providers.settings.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/permissions/privapp-com.motorola.dolby.dolbyui.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.dolby.daxservice.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.dolby.daxservice.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.android.providers.settings.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.android.providers.settings.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.dolby.dolbyui.xml \
    $(MOTODOLBY_PATH)/proprietary/system_ext/etc/sysconfig/config-com.motorola.motosignature.app.xml:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/sysconfig/config-com.motorola.motosignature.app.xml \
    $(MOTODOLBY_PATH)/proprietary/vendor/bin/hw/vendor.dolby.hardware.dms@2.0-service:$(TARGET_COPY_OUT_VENDOR)/bin/hw/vendor.dolby.hardware.dms@2.0-service \
    $(MOTODOLBY_PATH)/proprietary/vendor/etc/init/vendor.dolby.hardware.dms@2.0-service.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.dolby.hardware.dms@2.0-service.rc \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdapparamstorage.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdeccfg.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/libqtigef.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqtigef.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libdlbvol.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefright_soft_ddpdec.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib/libstagefrightdolby.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswdap.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswgamedap.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib/soundfx/libswvqe.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.dolby.hardware.dms@2.0.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libdapparamstorage.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdapparamstorage.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libdeccfg.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdeccfg.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libqtigef.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libqtigef.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libdlbdsservice.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libdlbdsservice.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/soundfx/libdlbvol.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libdlbvol.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libstagefright_soft_ddpdec.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefright_soft_ddpdec.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/libstagefrightdolby.so:$(TARGET_COPY_OUT_VENDOR)/lib64/libstagefrightdolby.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswdap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswdap.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswgamedap.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswgamedap.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/soundfx/libswvqe.so:$(TARGET_COPY_OUT_VENDOR)/lib64/soundfx/libswvqe.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0-impl.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0-impl.so \
    $(MOTODOLBY_PATH)/proprietary/vendor/lib64/vendor.dolby.hardware.dms@2.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.dolby.hardware.dms@2.0.so