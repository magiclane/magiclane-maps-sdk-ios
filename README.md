## Overview

Magic Lane provides a highly privacy-focused Maps, Location, and Navigation platform, featuring modular and scalable Software Development Kits (SDKs).
This repository provides Swift Package Manager manifests to simplify integration of the Magic Lane Maps SDK into your iOS projects.

## Requirements

- **iOS**: 14.0 or later
- **Xcode**: 13.0 or later
- **Swift**: 5.9 or later

## Getting Started

As the very first step, we highly recommend that you get a token from [Magic Lane Portal](https://developer.magiclane.com/api). If no token is set, you can still test your apps, but a watermark will be displayed, and all the online services including mapping, searching, routing, etc. will slow down after a few minutes.

These guides enable you to get quickly started using Magic Lane - Maps SDK for iOS to render your first interactive map, then plot a route, simulate navigation along the route, and search for points of interest.

The [Magic Lane Studio](https://developer.magiclane.com/studio) can be used to make custom map styles, and render GeoJSON data on your maps.

### Adding SDK as a Package Dependency

1. Open your project in Xcode
2. Go to **File > Add Package Dependencies...**
3. In the search bar, enter the repository URL:
   ```
   https://github.com/magiclane-international/maps-sdk-ios
   ```
4. Select **"Up to Next Major Version"** with version **2.1.3**
5. Click **Add Package**
6. Select your target and click **Add Package** again

## Documentation

Comprehensive API documentation is available as a DocC archive. The documentation archive provides detailed API references, guides, and code examples.

### Downloading Documentation

**Current Version (2.1.3)**: [Download GEMKit.doccarchive.zip](https://developer.magiclane.com/packages/ios/2.1.3/GEMKit.doccarchive.zip)

### Viewing Documentation in Xcode

1. Download the `GEMKit.doccarchive.zip` file
2. Extract the archive to get the `.doccarchive` file
3. Double-click the `.doccarchive` file to open it in Xcode
4. Browse the documentation in Xcode's documentation viewer
5. Alternatively, drag the `.doccarchive` file to:
   ```
   ~/Library/Developer/Xcode/DocumentationCache/
   ```
   Then access it via **Window > Developer Documentation** in Xcode

## Get in touch

If you encounter any issues or have questions [Contact Us](https://www.magiclane.com/web/contact).

Thank you for using the SDK.

## License

Copyright (C) 1995-2025 Magic Lane International B.V. <info@magiclane.com>

See the [LICENSE](LICENSES/LicenseRef-MagicLane-Proprietary.txt) for copyright and license information. 
Please review the terms and conditions before using this software in your projects.
