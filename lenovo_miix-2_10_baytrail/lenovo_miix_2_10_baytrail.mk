#
# Copyright (C) 2015 Console, Inc.
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

# Inherit Miix 2 8-inch profile
$(call inherit-product,device/console-os/lenovo_miix_2_8_baytrail/lenovo_miix_2_8_baytrail.mk)

# Overrides
PRODUCT_NAME := lenovo_miix_2_10_baytrail
PRODUCT_DEVICE := lenovo_miix_2_10_baytrail
PRODUCT_MODEL := Lenovo Miix 2 10

PRODUCT_AAPT_CONFIG := normal large mdpi tvdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi
