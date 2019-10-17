// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "RxApolloClient",
    platforms: [.iOS(.v9), .macOS(.v10_12), .tvOS(.v10), .watchOS(.v3)],
    products: [
        .library(name: "ApolloAlamofire", targets: ["ApolloAlamofire"]),        
    ],
    dependencies: [
      .package(url: "https://github.com/apollographql/apollo-ios.git", .exact("0.10.1")),
      .package(url: "https://github.com/ReactiveX/RxSwift", .branch("develop")),
    ],
    targets: [
        .target(
            name: "RxApolloClient",
            dependencies: ["RxSwift", "Apollo"],
            path: "RxApolloClient/Classes"            
        )
    ]
)
