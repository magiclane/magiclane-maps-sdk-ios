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
            url: "https://developer.magiclane.com/packages/ios/2.1.1/GEMKit.xcframework.zip",
            checksum: "1c294d4f0c919e0ae9b39cec61e37d3f4e5bc7fccfb35a584fb399dbce31ee07"
        )
    ]
)
