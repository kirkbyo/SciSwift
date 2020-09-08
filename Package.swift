// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SciSwift",
    products: [
        .library(
            name: "SciSwift",
            targets: ["SciSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "Metric",
            dependencies: []),
        .testTarget(
            name: "MetricTests",
            dependencies: ["Metric"]),
        
        .target(
            name: "MetricGlobal",
            dependencies: ["Metric"]),
        .testTarget(
            name: "MetricGlobalTests",
            dependencies: ["MetricGlobal"]),
        
        .target(
            name: "SciSwift",
            dependencies: ["Metric"]),
        .testTarget(
            name: "SciSwiftTests",
            dependencies: ["SciSwift"]),
    ]
)
