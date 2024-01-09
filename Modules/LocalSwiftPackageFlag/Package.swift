// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalSwiftPackageFlag",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [.library(name: "Flag", targets: ["Flag"])],
    targets: [
        .target(
            name: "Flag"
        ),
        .testTarget(name: "FlagTests", dependencies: ["Flag"]),
    ]
)
