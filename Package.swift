// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
	name: "ETOPaySdk",
	platforms: [
		.iOS(.v13),
		.macOS(.v11),
	],
	products: [
		.library(
			name: "ETOPaySdk",
			targets: ["ETOPaySdk"])
	],
	dependencies: [],
	targets: [
		.binaryTarget(
			name: "ETOPaySdkBin",
			url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift/releases/download/v0.16.1/ETOPaySdkBin.xcframework-89d11a6.zip", checksum: "1f9a7fbb3d79cc6969d5b92c3525c906ae1e7fd8c8a3443fbc442ee5ba543234"
		),
		.target(
			name: "ETOPaySdk",
			dependencies: ["ETOPaySdkBin"]),
	]
)
