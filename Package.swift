// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CoreEngineBenchMark",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CoreEngineBenchMark",
            targets: ["CoreEngineBenchMark"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sobabear/CoreEngine.git", from: "1.0.0"),
        .package(url: "https://github.com/pointfreeco/swift-composable-architecture.git", from: "0.37.0"),
        .package(url: "https://github.com/ReactorKit/ReactorKit.git", from: "3.0.0"),
        .package(url: "https://github.com/ReSwift/ReSwift.git", from: "6.0.0"),
        .package(url: "https://github.com/DevYeom/OneWay", from: "0.4.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CoreEngineBenchMark",
            dependencies: []),
        .testTarget(
            name: "CoreEngineBenchMarkTests",
            dependencies: [
                "CoreEngine",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                "ReactorKit",
                "ReSwift",
                "OneWay",
            ]),
    ]
)
