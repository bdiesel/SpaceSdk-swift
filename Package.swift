// swift-tools-version: 5.9

import PackageDescription
let package = Package(
    name: "SpaceSdk",
    platforms: [
        .iOS("18.0")
    ],
    products: [
        .library(
            name: "SpaceSdkLibrary",
            targets: ["ExportedKotlinPackages", "KotlinRuntimeSupport", "KotlinCoroutineSupport", "SpaceSdk", "OrgJetbrainsKotlinxKotlinxCoroutinesCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SpaceSdkKotlin",
            url: "https://github.com/bdiesel/SpaceSdk-swift/releases/download/0.1.0/SpaceSdkKotlin.xcframework.zip",
            checksum: "e791e2406e121061af1602b560f295bb0a846ff3f9ec7b19035b04e32142c5f4"
        ),
        .target(
            name: "ExportedKotlinPackages",
            dependencies: ["KotlinRuntime"]
        ),
        .target(
            name: "KotlinRuntimeSupport",
            dependencies: ["KotlinRuntimeSupportBridge", "KotlinRuntime"]
        ),
        .target(
            name: "KotlinRuntimeSupportBridge"
        ),
        .target(
            name: "KotlinCoroutineSupport",
            dependencies: ["KotlinRuntimeSupport", "KotlinCoroutineSupportBridge", "KotlinRuntime"]
        ),
        .target(
            name: "KotlinCoroutineSupportBridge"
        ),
        .target(
            name: "SpaceSdk",
            dependencies: ["ExportedKotlinPackages", "KotlinCoroutineSupport", "KotlinRuntimeSupport", "OrgJetbrainsKotlinxKotlinxCoroutinesCore", "SharedBridge_SpaceSdk", "KotlinRuntime"]
        ),
        .target(
            name: "SharedBridge_SpaceSdk"
        ),
        .target(
            name: "OrgJetbrainsKotlinxKotlinxCoroutinesCore",
            dependencies: ["ExportedKotlinPackages", "KotlinCoroutineSupport", "KotlinRuntimeSupport", "SharedBridge_OrgJetbrainsKotlinxKotlinxCoroutinesCore", "KotlinRuntime"]
        ),
        .target(
            name: "SharedBridge_OrgJetbrainsKotlinxKotlinxCoroutinesCore"
        ),
        .target(
            name: "KotlinRuntime",
            dependencies: ["SpaceSdkKotlin"]
        )
    ]
)
