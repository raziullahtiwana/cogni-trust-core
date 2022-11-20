// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
    ],
    dependencies: [
        .package(
              name: "SwiftProtobuf",
              url: "https://github.com/apple/swift-protobuf.git",
              "1.15.0" ..< "2.0.0"
            ),],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/trustwallet/wallet-core/releases/download/3.1.0/WalletCore.xcframework.zip",
            checksum: "2487af30a8f6f4775a41f29456f792f15269f4f4daae2da7e4b9ef8747613e3a"
        )
    ]
)
