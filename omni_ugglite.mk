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

# Release name
PRODUCT_RELEASE_NAME := ugglite

$(call inherit-product, build/target/product/embedded.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8937

# Kernel
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/Image.gz-dtb:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ugglite
PRODUCT_NAME := omni_ugglite
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 5A Lite
PRODUCT_MANUFACTURER := Xiaomi
