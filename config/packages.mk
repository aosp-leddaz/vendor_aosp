#
# Copyright (C) 2018-2022 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Include librsjni explicitly to workaround GMS issue
PRODUCT_PACKAGES += \
    librsjni

# StatiX Packages
PRODUCT_PACKAGES += \
    RepainterServicePriv \
    SimpleDeviceConfig \
    QuickAccessWallet

# Camera
PRODUCT_PACKAGES += \
    Aperture

# Charger images
PRODUCT_PACKAGES += \
    charger_res_images \
    product_charger_res_images

# Repainter integration
PRODUCT_PACKAGES += \
    RepainterServicePriv
