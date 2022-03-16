// swift-tools-version:5.1
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
            targets: ["FBSnapshotTestCase"]
		)
    ],
    dependencies: [],
    targets: [
        .target(
            name: "FBSnapshotTestCase",
            dependencies: [],
            path: "FBSnapshotTestCase",
            publicHeadersPath: "include"
		)
    ]
)

