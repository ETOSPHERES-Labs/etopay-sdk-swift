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
			url: "https://github.com/ETOSPHERES-Labs/etopay-sdk-swift/releases/download/nightly/ETOPaySdkBin.xcframework-62e896c.zip", checksum: "e40a00cd4af28b617b4c5d475faa36bc7368bba975b95f9d022ec5405390412c"
		),
		.target(
			name: "ETOPaySdk",
			dependencies: ["ETOPaySdkBin"]),
	]
)
