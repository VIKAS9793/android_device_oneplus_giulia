#!/bin/bash
#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

# Required!
export DEVICE=giulia
export DEVICE_COMMON=sm8650-common
export VENDOR=oneplus

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@" 