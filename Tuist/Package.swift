// swift-tools-version: 5.9
import PackageDescription

#if TUIST

import ProjectDescription

// While modules are consumed as projects, and have their own definitions, for external dependencies we need to be more explicit on the way they are linked and configured
let packageSettings = PackageSettings(
//    productTypes: ["Bootstrap": .staticFramework, "Flag": .staticFramework],
//    productTypes: ["Bootstrap": .staticLibrary, "Flag": .staticLibrary]
//    productTypes: ["Bootstrap": .dynamicLibrary, "Flag": .dynamicLibrary]
//    productTypes: ["Bootstrap": .framework, "Flag": .framework]
//    baseSettings: .settings(base: ["GENERATE_MASTER_OBJECT_FILE": "YES"])
)

#endif

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(path: "../Modules/LocalSwiftPackageFlag"),
        .package(path: "../Modules/LocalSwiftPackageBootstrap"),
    ]
)
