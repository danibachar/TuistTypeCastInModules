// swift-tools-version:5.7
import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: SwiftPackageManagerDependencies(
        productTypes: [
            "Bootstrap": .framework,
            "Flag": .framework,
        ],
        projectOptions: [:]
    ),
    platforms: [.iOS, .watchOS]
)
