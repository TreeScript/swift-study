// swift-tools-version: 6.4
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftStudy",
    platforms: [
        .macOS(.v13)
    ],
    targets: [
        .executableTarget(
            name: "SwiftStudy",
            resources: [
                .process("Resources")
            ]
        )
    ]
)
