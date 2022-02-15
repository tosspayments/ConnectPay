// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ConnectPay",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "ConnectPayBiometric",
            targets: [
                "ConnectPayBase",
                "BiometricInterface",
            ]),
        .library(
            name: "ConnectPayOCR",
            targets: [
                "ConnectPayBase",
                "OCRInterface",
                "FinCubeOcrSDK"
            ]),
        .library(
            name: "ConnectPayWeb",
            targets: [
                "ConnectPayBase",
                "OCRInterface",
                "FinCubeOcrSDK",
                "BiometricInterface"
            ]),
        .library(
            name: "ConnectPayUI",
            targets: [
                "ConnectPayBase",
                "OCRInterface",
                "BiometricInterface",
                "TossPaymentsCore",
                "FinCubeOcrSDK",
                "ConnectPayCore"
            ])
    ],
    targets: [
        .binaryTarget(name: "ConnectPayBase", path: "Library/ConnectPayBase.xcframework"),
        .binaryTarget(name: "OCRInterface", path: "Library/OCRInterface.xcframework"),
        .binaryTarget(name: "BiometricInterface", path: "Library/BiometricInterface.xcframework"),
        .binaryTarget(name: "TossPaymentsCore", path: "Library/TossPaymentsCore.xcframework"),
        .binaryTarget(name: "FinCubeOcrSDK", path: "Library/FinCubeOcrSDK.xcframework"),
        .binaryTarget(name: "ConnectPayCore", path: "Library/ConnectPayCore.xcframework")
    ],
    swiftLanguageVersions: [
        .v5
    ]
)
