#
# Copyright 2015 Console, Inc.
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

## Architecture ##

TARGET_2ND_ARCH_VARIANT := silvermont

#TODO: Adjust davlik and caches to optimize for 1GB RAM

## Display ##

# By default recovery minui expects RGBA framebuffer
# also affects UI in Userfastboot (use for AndCanGO)
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# ThinkPad 8 display is 7-inch 1280x800 = 215 DPI - Using 213 for tvdpi
ADDITIONAL_DEFAULT_PROPERTIES += ro.sf.lcd_density=213

#####################################################################
# UFO Gen7 Device Bring Up - Disabled Pending Intel DRM & VAAPI Port
#####################################################################
BOARD_KERNEL_CMDLINE += vga=current i915.modeset=1 drm.vblankoffdelay=1 i915.fastboot=1
USE_OPENGL_RENDERER := true
#USE_INTEL_UFO_DRIVER := true
#USE_INTEL_UFO_OPENCL := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
#INTEL_VA := true
BOARD_GRAPHIC_IS_GEN := true

## System's VSYNC phase offsets in nanoseconds
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000

## Allow HWC to perform a final CSC on virtual displays
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true

#ADDITIONAL_DEFAULT_PROPERTIES += \
#	ro.ufo.use_msync=1 \
#	ro.ufo.use_coreu=1

#BOARD_SEPOLICY_DIRS += device/intel/sepolicy/color_config

## TODO: Implement
#OVERRIDE_RS_DRIVER := libRSDriver_intel7.so

# Audio

BOARD_USES_ALSA_AUDIO := true
BOARD_USES_TINY_ALSA_AUDIO := true

# Bluetooth

# Wi-Fi

# TODO: Device has a vibrate function for Windows physical touch button - evaluate if Linux can talk to the motor
# This is likely dedicated just for the blasted button, as Win8 didn't expose a vibration API - ugh
# TODO: If vibrator is accessible, configure for use

# FM Radio

# TODO: Stream 7's Wi-Fi chipset appears to include FM Radio support. Unclear if this can be exposed in Android. Evaluation needed.

# Generic target defaults
TARGET_NO_BOOTLOADER := true

TARGET_ARCH := x86

TARGET_CPU_ABI := x86
TARGET_CPU_SMP := true

TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_CPU_ABI) $(TARGET_CPU_ABI2) $(NATIVE_BRIDGE_ABI_LIST_32_BIT)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_32_BIT)

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400
BOARD_CACHEIMAGE_PARTITION_SIZE := 69206016
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 512
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

BOARD_SEPOLICY_DIRS += build/target/board/generic/sepolicy
BOARD_SEPOLICY_DIRS += build/target/board/generic_x86/sepolicy

BOARD_SEPOLICY_UNION += \
        bootanim.te \
        device.te \
        domain.te \
        file.te \
        file_contexts \
        healthd.te \
        installd.te \
        qemud.te \
        rild.te \
        shell.te \
        surfaceflinger.te \
        system_server.te \
        zygote.te

include device/generic/common/BoardConfig.mk
