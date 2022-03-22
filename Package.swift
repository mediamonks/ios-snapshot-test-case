// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "FBSnapshotTestCase",
    platforms: [
        .iOS(.v10),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "FBSnapshotTestCase",
            type: .dynamic,
            targets: ["FBSnapshotTestCase"]
		)
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FBSnapshotTestCase",
            dependencies: [],
            path: "FBSnapshotTestCase",
            exclude: ["FBSnapshotTestCase-Info.plist", "Dummy.swift"],
            publicHeadersPath: "include"
		)
    ]
)

