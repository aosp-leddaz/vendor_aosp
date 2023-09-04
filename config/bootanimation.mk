#
# Copyright (C) 2018 The Dirty Unicorns Project
# Copyright (C) 2020 StatiXOS
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

# Boot Animation
scr_resolution := 1440
aosp_device := $(patsubst %f,%,$(subst aosp_,,$(TARGET_PRODUCT)))

ifneq ($(filter mido oneplus3,$(aosp_device)),)
scr_resolution := 1080
endif

ifneq ($(wildcard vendor/aosp/bootanimation/bootanimation_$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/aosp/bootanimation/bootanimation_$(scr_resolution).zip:$(TARGET_COPY_OUT_SYSTEM)/media/bootanimation.zip
endif

PRODUCT_ARTIFACT_PATH_REQUIREMENT_ALLOWED_LIST += \
    system/media/bootanimation.zip
