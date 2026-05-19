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
            url: "https://github.com/crodas/cdk-swift/releases/download/v12.16.0/CashuDevKitFFI.xcframework.zip",
            checksum: "57ba71a08329f26e7ead1ae1859de66b4d43fa09f9d29748112d41b3f7258a63"
        ),
        .target(
            name: "Cdk",
            dependencies: ["CashuDevKitFFI"],
            path: "Sources/Cdk"
        ),
    ]
)
