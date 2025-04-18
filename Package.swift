// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "testgithubaction",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "testgithubaction",
            targets: ["testgithubaction"]),
    ],
    dependencies: [
        .package(
            name: "Firebase",
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            .upToNextMajor(from: "11.4.0")
        ),
        .package(
            url: "https://github.com/google/GoogleSignIn-iOS.git",
            .upToNextMajor(from: "8.0.0")
        ),
        .package(
            url: "https://github.com/facebook/facebook-ios-sdk.git",
                .upToNextMajor(from: "17.0.3")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "testgithubaction",
            dependencies: [
                .product(name: "FirebaseAnalytics", package: "Firebase"),
                .product(name: "FirebaseCrashlytics", package: "Firebase"),
                .product(name: "GoogleSignIn", package: "GoogleSignIn-iOS"),
                .product(name: "FacebookLogin", package: "facebook-ios-sdk"),
                .product(name: "FacebookShare", package: "facebook-ios-sdk")
            ]),
            .testTarget(
                name: "testgithubactionTests",
                dependencies: ["testgithubaction"]),
    ]
)
