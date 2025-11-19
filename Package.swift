// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GEMKit",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "GEMKit", 
            targets: ["GEMKit"]
        )
    ],
     targets: [
        .binaryTarget(
            name: "GEMKit",
            url: "https://developer.magiclane.com/packages/ios/2.1.3/GEMKit.xcframework.zip",
            checksum: "bc87a193160f33cfe230e9594d44b04227e71414c36b0c11f1342d026e04fd3a"
        )
    ]
)
