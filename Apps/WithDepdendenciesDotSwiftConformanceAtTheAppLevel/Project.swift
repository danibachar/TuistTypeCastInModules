import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "AppDependencies2",
    settings: .projectSettings,
    targets: [
        Target(
            name: "AppDependencies2",
            destinations: [.iPad, .iPhone],
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            sources: "Sources/App/**",
            dependencies: [
                .external(name: "Flag"),
            ],
            settings: .targetSettings
        )
    ]
)
