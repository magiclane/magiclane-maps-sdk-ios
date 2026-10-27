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
            url: "https://developer.magiclane.com/packages/ios/2.2.9/GEMKit.xcframework.zip",
            checksum: "ecccb7a3fdbfb09d79e13bec7b77481d93e9a90adb108c98076d18d14b548c4f"
        )
    ]
)
