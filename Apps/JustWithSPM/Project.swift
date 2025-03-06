import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "AppSPM",
    packages: [
        .local(path: "../../Modules/LocalSwiftPackageBootstrap/"),
        .local(path: "../../Modules/LocalSwiftPackageFlag/"),
    ],
    targets: [
        .target(
            name: "AppSPM",
            destinations: [.iPad, .iPhone],
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            sources: "Sources/App/**",
            dependencies: [
                .package(product: "Bootstrap"),
                .package(product: "Flag"),
            ]
        )
    ]
)
