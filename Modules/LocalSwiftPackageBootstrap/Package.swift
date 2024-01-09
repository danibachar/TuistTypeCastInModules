// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LocalSwiftPackageBootstrap",
    defaultLocalization: "en",
    platforms: [.iOS(.v13)],
    products: [.library(name: "Bootstrap", targets: ["Bootstrap"])],
    dependencies: [
        .package(path: "../LocalSwiftPackageFlag"),
    ],
    targets: [
        .target(name: "Bootstrap", dependencies: [.product(name: "Flag",
                                                           package: "LocalSwiftPackageFlag")]),
        .testTarget(name: "BootstrapTests", dependencies: ["Bootstrap"]),
    ]
)
