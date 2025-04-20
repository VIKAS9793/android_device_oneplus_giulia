# Device Tree for OnePlus 13R (Giulia)

This repository contains the device tree for OnePlus 13R (Giulia) for building LineageOS.

## Device specifications

| Feature                 | Specification                                                   |
|------------------------|----------------------------------------------------------------|
| Chipset                | Qualcomm Snapdragon® 8 Gen 3 Mobile Platform                    |
| CPU                    | Qualcomm® Kryo™ 980 CPU @3.3GHz                                |
| GPU                    | Adreno™ 750 @903MHz                                            |
| Memory                 | 12GB/16GB LPDDR5X RAM                                          |
| Storage               | 256GB/512GB UFS 4.0                                            |
| Display               | 6.78" 120Hz ProXDR Display with LTPO 4.1                       |
|                       | 2780 x 1264 pixels, 450 ppi                                    |
|                       | 1600 nits (HBM) / 4500 nits (Peak)                            |
|                       | 100% Display P3, 10-bit Color Depth                            |
| Battery               | 6000 mAh (single-cell, non-removable)                          |
|                       | 80W SUPERVOOC charging                                         |
| Shipped Android       | OxygenOS 15.0 based on Android™ 15                             |
| Dimensions            | 161.7 x 75.8 x 8.0 mm                                          |
| Weight                | 206g                                                           |

## Device Tree Structure

```
device/oneplus/giulia/
├── configs/                  # Device-specific configurations
├── overlay/                  # RRO overlays
├── prebuilts/               # Prebuilt kernel and modules
├── proprietary-files.txt    # Proprietary blobs list
├── rootdir/                 # Root directory files
├── sepolicy/               # SELinux policies
└── ...                     # Other device-specific files
```

## Features Status

- [x] Boots
- [x] Display
- [x] Audio
- [x] Wi-Fi
- [x] Bluetooth
- [x] Camera
- [x] GPS
- [x] NFC
- [x] Fingerprint
- [x] Face Unlock
- [x] Encryption
- [x] Brightness control
- [x] Auto-brightness
- [x] USB
- [x] USB-C Audio
- [x] Alert Slider
- [x] Wireless Charging
- [x] Fast Charging
- [x] Screen Recording
- [x] Screen Off Gestures

## Building

1. Initialize your local repository using LineageOS trees:
```bash
repo init -u https://github.com/LineageOS/android.git -b lineage-22.0
```

2. Clone this repository to `device/oneplus/giulia`

3. Clone the vendor tree:
```bash
git clone https://github.com/VIKAS9793/vendor_oneplus_giulia.git -b lineage-22.2 vendor/oneplus/giulia
```

4. Set up the environment:
```bash
source build/envsetup.sh
```

5. Build:
```bash
lunch lineage_giulia-userdebug
make bacon -j$(nproc --all)
```

## Credits

* VIKAS9793 (vikassahani17@gmail.com)
* LineageOS Team
* OnePlus/OxygenOS Team

## License

```
#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```

## Contributing

1. Fork the repository
2. Create a branch: `git checkout -b feature/feature-name`
3. Commit your changes: `git commit -s -m 'Add feature'`
4. Push to the branch: `git push origin feature/feature-name`
5. Submit a pull request

Signed-off-by: VIKAS9793 <vikassahani17@gmail.com>
