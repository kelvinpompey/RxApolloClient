// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxApolloClient",
    platforms: [.iOS(.v9), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "RxApolloClient", targets: ["RxApolloClient"]),        
    ],
    dependencies: [
      .package(url: "https://github.com/apollographql/apollo-ios.git", .exact("0.15.3")),
      .package(url: "https://github.com/ReactiveX/RxSwift", .upToNextMajor(from: "5.0.0")),
    ],
    targets: [
        .target(
            name: "RxApolloClient",
            dependencies: ["RxSwift", "Apollo"],
            path: "RxApolloClient/Classes"            
        )
    ]
)
