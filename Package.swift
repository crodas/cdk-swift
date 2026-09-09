// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "cdk-swift",
    platforms: [.iOS(.v14), .macOS(.v13)],
    products: [
        .library(name: "Cdk", targets: ["Cdk"]),
    ],
    targets: [
        .binaryTarget(
            name: "CashuDevKitFFI",
            url: "https://github.com/crodas/cdk-swift/releases/download/v0.18.0-nightly.20260909.g9f188e1/CashuDevKitFFI.xcframework.zip",
            checksum: "eff165f62b1c95f1a5de6422c60937c7820418d136a9f87e1ea7a9692a6d9c45"
        ),
        .target(
            name: "Cdk",
            dependencies: ["CashuDevKitFFI"],
            path: "Sources/Cdk"
        ),
    ]
)
