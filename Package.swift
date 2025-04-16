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
			url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift/releases/download/nightly/ETOPaySdkBin.xcframework-c649ca8.zip", checksum: "b9da1400b2104efd45a492e43fbe6804073d9dd277679c47edb8febf7cde4a4e"
		),
		.target(
			name: "ETOPaySdk",
			dependencies: ["ETOPaySdkBin"]),
	]
)
