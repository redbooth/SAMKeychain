// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SAMKeychain",
    platforms: [
        .iOS(.v12),
        .tvOS(.v12),
        .macOS(.v10_13),
        .watchOS(.v5)
    ],
    products: [
        .library(name: "SAMKeychain", targets: ["SAMKeychain"])
    ],
    targets: [
        .target(
            name: "SAMKeychain",
            path: "Sources",
            publicHeadersPath: "include",
            linkerSettings: [
                .linkedFramework("Security"),
                .linkedFramework("Foundation")
            ]
        )
    ]
)
