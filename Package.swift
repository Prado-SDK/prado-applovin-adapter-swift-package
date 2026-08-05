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
            targets: ["PradoApplovinAdapterTarget"]
        )
    ],
    dependencies: [
        // Dependency on core SDK
        .package(url: "https://github.com/Prado-SDK/prado-sdk-swift-package.git", from: "10.1.3"),
        // Dependency on mediation network SDK
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", "11.4.4"..<"14.0.0")
    ],
    targets: [
        .target(
            name: "PradoApplovinAdapterTarget",
            dependencies: [
                .product(name: "PradoSDK", package: "prado-sdk-swift-package"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                "PradoApplovinAdapter"
            ]
        ),
        .binaryTarget(
            name: "PradoApplovinAdapter",
            path: "XCFramework/PradoApplovinAdapter.xcframework"
        )
    ]
)
