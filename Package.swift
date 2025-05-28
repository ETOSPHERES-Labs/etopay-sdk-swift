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
			url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift/releases/download/nightly/ETOPaySdkBin.xcframework-1efb87c.zip", checksum: "8586b1344745237d0991c96e407a0743f185c0c907d191f98f5de5e588f6c455"
		),
		.target(
			name: "ETOPaySdk",
			dependencies: ["ETOPaySdkBin"]),
	]
)
