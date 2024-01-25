// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(path: "../../../Modules/LocalSwiftPackageFlag"),
        .package(path: "../../../Modules/LocalSwiftPackageBootstrap"),
    ]
)
