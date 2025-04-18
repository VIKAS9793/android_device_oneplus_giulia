# Device Tree for OnePlus 13R (Giulia)

The OnePlus 13R (codenamed "giulia") is a flagship smartphone from OnePlus. It was announced and released in January 2024.

## Device specifications

| Feature                | Specification                                                   |
| ---------------------- | -------------------------------------------------------------- |
| Chipset               | Qualcomm SM8650 Snapdragon® 8 Gen 3 (4 nm)                     |
| CPU                   | Qualcomm® Kryo™ 980 CPU @3.3GHz                               |
| GPU                   | Adreno™ 750 @903MHz                                            |
| Memory                | 12/16 GB LPDDR5X RAM                                           |
| Storage               | 256/512 GB (UFS 4.0)                                           |
| Battery               | 6000 mAh (non-removable), 80W SUPERVOOC™                       |
| Dimensions            | 161.7 x 75.8 x 8.0 mm                                          |
| Display               | 6.78" 120Hz ProXDR Display with LTPO 4.1                       |
|                       | 2780 x 1264 pixels, 450 ppi                                    |
|                       | HDR10+, Dolby Vision®, HDRViVid                               |
|                       | 1600 nits (HBM) / 4500 nits (Peak)                            |
| Rear Camera           | 50 MP (Wide, Sony LYT-700, f/1.8, OIS)                        |
|                       | 50 MP (2X Telephoto, S5KJN5, f/2.0)                           |
|                       | 8 MP (Ultra-wide, f/2.2, 112° FoV)                            |
| Front Camera          | 16 MP (f/2.4, 82° FoV)                                        |
| Sensors               | Proximity, Ambient light, Color temperature, E-compass          |
|                       | Accelerometer, Gyroscope, In-display fingerprint               |
|                       | Hall Sensor, Infrared remote control                           |
| Connectivity          | 5G, Wi-Fi 7, Bluetooth 5.4, NFC                               |
|                       | GPS(L1+L5), GLONASS, BDS, Galileo, QZSS, NavIC                |
| Audio                 | OReality Audio, 3 mics                                         |
| Operating System      | OxygenOS 15.0 based on Android™ 15                            |

## Building YAAP

```bash
# Initialize local repository
repo init -u https://github.com/yaap/manifest.git -b fifteen

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

# Clone device tree
git clone https://github.com/VIKAS9793/android_device_oneplus_giulia -b fifteen device/oneplus/giulia

# Clone common device tree
git clone https://github.com/VIKAS9793/device_oneplus_sm8650-common -b fifteen device/oneplus/sm8650-common

# Clone vendor tree
git clone https://github.com/VIKAS9793/proprietary_vendor_oneplus_sm8650-common -b fifteen vendor/oneplus/sm8650-common

# Clone kernel tree
git clone https://github.com/VIKAS9793/kernel_oneplus_sm8650 -b fifteen kernel/oneplus/sm8650

# Build
. build/envsetup.sh
lunch yaap_giulia-userdebug
mka bacon -j$(nproc --all)
```

## Repositories

| Repository | Description |
|------------|-------------|
| [android_device_oneplus_giulia](https://github.com/VIKAS9793/android_device_oneplus_giulia) | Device configuration |
| [device_oneplus_sm8650-common](https://github.com/VIKAS9793/device_oneplus_sm8650-common) | Common device tree |
| [proprietary_vendor_oneplus_sm8650-common](https://github.com/VIKAS9793/proprietary_vendor_oneplus_sm8650-common) | Proprietary vendor files |
| [kernel_oneplus_sm8650](https://github.com/VIKAS9793/kernel_oneplus_sm8650) | Kernel source |

## Working Features
- [x] Boots
- [x] RIL
- [x] Mobile data
- [x] WiFi
- [x] Bluetooth
- [x] GPS
- [x] Camera
- [x] Flashlight
- [x] Storage
- [x] Audio
- [x] Sensors
- [x] NFC
- [x] Fingerprint
- [x] Face unlock
- [x] Alert slider
- [x] Brightness control
- [x] Auto brightness
- [x] Screen recording
- [x] IR sensor

## Known Issues
- Work in progress
- Please report issues in the GitHub repository

## Maintainer
- VIKAS9793 (vikassahani17@gmail.com)

## Contributing
1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

## Copyright

```text
#
# Copyright (C) 2024 Yet Another AOSP Project
#
# SPDX-License-Identifier: Apache-2.0
#
``` 