// swift-tools-version:6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "picovoicefat",
    platforms: [.iOS(.v18)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "picovoicefat",
            targets: ["picovoicefat"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Picovoice/ios-voice-processor", from: "1.2.0"),
        .package(url: "https://github.com/Picovoice/porcupine", branch: "master"),
        .package(url: "https://github.com/Picovoice/rhino", branch: "master"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "picovoicefat",
            dependencies: [
                .product(name: "ios_voice_processor", package: "ios-voice-processor"),
                .product(name: "Porcupine", package: "porcupine"),
                .product(name: "Rhino", package: "rhino"),
            ]),
        .testTarget(
            name: "picovoicefatTests",
            dependencies: ["picovoicefat"]),
    ]
)
