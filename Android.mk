#
# Copyright (C) 2018 Texas Instruments Incorporated - http://www.ti.com/
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.panda), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

ifneq ($(filter pacudroid%, $(TARGET_DEVICE)),)

#LOCAL_PATH := $(call my-dir)
YUKAWA_PATH := device/amlogic/yukawa

$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/binaries/bt-wifi-firmware,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/binaries/video_firmware,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/hal/audio,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/hal/camera,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/input,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/media_xml,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/wifi,))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/,.rc))
$(eval $(call declare-1p-copy-files,device/amlogic/yukawa/,fstab.yukawa))

# if some modules are built directly from this directory (not subdirectories),
# their rules should be written here.

include $(call all-makefiles-under,$(YUKAWA_PATH))
endif
