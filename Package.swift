// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoSPM",
    dependencies: [
        .package(url: "https://github.com/marcuswu0814/SwiftCLIToolbox", .branch("master"))
    ],
    targets: [
        .target(
            name: "DemoSPM",
            dependencies: ["DemoSPMCore"]),
        .target(
            name: "DemoSPMCore",
            dependencies: ["SwiftCLIToolbox"]),
        .testTarget(
            name: "DemoSPMCoreTest",
            dependencies: ["DemoSPMCore"])
        
    ]
)
