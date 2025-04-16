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
			url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift/releases/download/nightly/ETOPaySdkBin.xcframework-db70ad3.zip", checksum: "010349449d80ea334da5027afb3287baf94975e60df5cabdd26fd0b7a56d71de"
		),
		.target(
			name: "ETOPaySdk",
			dependencies: ["ETOPaySdkBin"]),
	]
)
