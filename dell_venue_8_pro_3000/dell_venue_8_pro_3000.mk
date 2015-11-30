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

# Inerhit DV8P 5000 Series
# This device tree is meant to accomidate for 3000 series component changes
# Namely, RAM reduction and possible lower-cost display, etc
# TODO: Fine tune for 1GB RAM
$(call inherit-product,device/console-os/dell_venue_8_pro_5000/dell_venue_8_pro_5000.mk)

# Overrides
PRODUCT_NAME := dell_venue_8_pro_3000
PRODUCT_DEVICE := dell_venue_8_pro_3000
PRODUCT_MODEL := Dell venue 8 Pro 3000 Series
