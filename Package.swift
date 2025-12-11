// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PradoApplovinAdapter",
    platforms: [
        .iOS(.v12) // or your minimum supported version
    ],
    products: [
        .library(
            name: "PradoApplovinAdapter",
            targets: ["PradoApplovinAdapter"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Prado-SDK/core-sdk-swift-package.git", from: "10.1.3")
    ],
    targets: [
        .binaryTarget(
            name: "PradoApplovinAdapter",
            path: "XCFramework/PradoApplovinAdapter.xcframework"
        )
    ]
)
