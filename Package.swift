// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ConnectPay",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ConnectPay",
            targets: [
                "TossPaymentsCore",
                "FinCubeOcrSDK",
                "ConnectPayCore"
            ])
    ],
    targets: [
        .binaryTarget(name: "TossPaymentsCore", path: "Library/TossPaymentsCore.xcframework"),
        .binaryTarget(name: "FinCubeOcrSDK", path: "Library/FinCubeOcrSDK.xcframework"),
        .binaryTarget(name: "ConnectPayCore", path: "Library/ConnectPayCore.xcframework")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
