// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "OpenPrintTagTypes",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "OpenPrintTagTypes",
            targets: ["OpenPrintTagTypes"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "OpenPrintTagTypes",
            dependencies: []
        ),
        .testTarget(
            name: "OpenPrintTagTypesTests",
            dependencies: ["OpenPrintTagTypes"]
        ),
    ]
)
