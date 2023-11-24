// swift-tools-version:5.9

import PackageDescription

let package = Package(
  name: "rep-co-web",
  platforms: [
    .macOS(.v13),
    .iOS(.v17),
  ],
  products: [
    .executable(name: "App", targets: ["App"]),
    .library(name: "AppRouting", targets: ["AppRouting"]),
    .library(name: "Views", targets: ["Views"]),
  ],
  dependencies: [
    .package(url: "https://github.com/vapor/vapor.git", exact: "4.86.2"),
    .package(url: "https://github.com/pointfreeco/vapor-routing", from: "0.1.3"),
    .package(url: "https://github.com/vapor-community/HTMLKit.git", exact: "3.0.0-alpha.7"),
  ],
  targets: [
    .executableTarget(
      name: "App",
      dependencies: [
        "AppRouting",
        "Views",
        .product(name: "Vapor", package: "vapor"),
        .product(name: "VaporRouting", package: "vapor-routing"),
        .product(name: "HTMLKit", package: "HTMLKit"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "AppRouting",
      dependencies: [
        .product(name: "VaporRouting", package: "vapor-routing")
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "Views",
      dependencies: [
        "Styles",
        .product(name: "HTMLKit", package: "HTMLKit"),
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
    .target(
      name: "Styles",
      dependencies: [
        .product(name: "HTMLKit", package: "HTMLKit")
      ],
      swiftSettings: [
        .enableExperimentalFeature("StrictConcurrency=complete")
      ]
    ),
  ]
)
