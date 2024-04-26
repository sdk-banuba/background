// swift-tools-version:5.3
import PackageDescription

let bnbPackageVersion: Version = "1.12.1-39-g03310be29"

let package = Package(
    name: "background",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "background",
            targets: [
                "background",
                "background_sdk_core",
                "background_effect_player",
                "background_scripting"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/sdk-banuba/sdk_core.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/effect_player.git",
            .exact(bnbPackageVersion)
        ),
        .package(
            url: "https://github.com/sdk-banuba/scripting.git",
            .exact(bnbPackageVersion)
        ),
    ],
    targets: [
        .binaryTarget(
            name: "background",
            url: "https://d2cm7wtcqqw29.cloudfront.net/1.12.1-39-g03310be29/background.zip",
            checksum: "dddbb8a6cce12b22645dfb94ff7253dbb3341476b9f58d9196ca6e61d2f0a9e9"
        ),
        .target(
            name: "background_sdk_core",
            dependencies: [
                .product(
                    name: "sdk_core",
                    package: "sdk_core"
                ),
            ]
        ),
        .target(
            name: "background_effect_player",
            dependencies: [
                .product(
                    name: "effect_player",
                    package: "effect_player"
                ),
            ]
        ),
        .target(
            name: "background_scripting",
            dependencies: [
                .product(
                    name: "scripting",
                    package: "scripting"
                ),
            ]
        ),
    ]
)
