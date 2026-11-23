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
            targets: ["ExportedKotlinPackages", "KotlinRuntimeSupport", "KotlinCoroutineSupport", "SpaceSdk"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "SpaceSdkKotlin",
            url: "https://github.com/bdiesel/SpaceSdk-swift/releases/download/0.2.0/SpaceSdkKotlin.xcframework.zip",
            checksum: "21fdfea742ec3eaee69835a2ecc0f9c4a7fba38aa792246f6030994d4e094914"
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
            dependencies: ["ExportedKotlinPackages", "KotlinCoroutineSupport", "KotlinRuntimeSupport", "SharedBridge_SpaceSdk", "KotlinRuntime"]
        ),
        .target(
            name: "SharedBridge_SpaceSdk"
        ),
        .target(
            name: "KotlinRuntime",
            dependencies: ["SpaceSdkKotlin"]
        )
    ]
)
