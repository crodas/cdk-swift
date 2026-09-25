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
            url: "https://github.com/crodas/cdk-swift/releases/download/v0.18.0-nightly.20260925.g132ddd8/CashuDevKitFFI.xcframework.zip",
            checksum: "5f34926461b0e3ba1228f51bb53d7dcec0287fbd8d448c1d7c63ccf9a8bd676b"
        ),
        .target(
            name: "Cdk",
            dependencies: ["CashuDevKitFFI"],
            path: "Sources/Cdk"
        ),
    ]
)
