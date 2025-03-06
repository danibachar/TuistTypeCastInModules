import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "AppDependencies",
    targets: [
        .target(
            name: "AppDependencies",
            destinations: [.iPad, .iPhone],
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            sources: "Sources/App/**",
            dependencies: [
                .external(name: "Bootstrap"),
                .external(name: "Flag"),
            ]
        )
    ]
)
