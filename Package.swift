// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DokuWalletSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "DokuWalletSDK",
            targets: ["DokuWalletSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "DokuWalletSDK",
            path: "DokuWalletSDK.xcframework"
        ),
    ]
)
