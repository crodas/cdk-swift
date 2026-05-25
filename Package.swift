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
            url: "https://github.com/crodas/cdk-swift/releases/download/v99.99.1/CashuDevKitFFI.xcframework.zip",
            checksum: "db328c4b0f8ca254badd442b107f14845c9da857fc886c20d62160af586ea511"
        ),
        .target(
            name: "Cdk",
            dependencies: ["CashuDevKitFFI"],
            path: "Sources/Cdk"
        ),
    ]
)
