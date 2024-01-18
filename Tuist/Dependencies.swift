// swift-tools-version:5.7
import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: .init(
        projectOptions: [:]
    ),
    platforms: [.iOS, .watchOS]
)
