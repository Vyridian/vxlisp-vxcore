// swift-tools-version: 5.9
import PackageDescription

let package = Package(
  name: "VxProject",
  products: [
    .library(name: "Vx", targets: ["Vx"]),
    .executable(name: "App", targets: ["App"]),
    .executable(name: "AppTest", targets: ["AppTest"])
  ],
  targets: [
    // Core library
    .target(
      name: "Vx",
      path: "Sources/Vx"
    ),
    // Executable
    .executableTarget(
      name: "App",
      dependencies: ["Vx"],
      path: "Sources/App"
    ),
    // ===== test support =====
    .target(
      name: "TestLib",
      dependencies: ["Vx"],
      path: "TestSuite/TestLib"
    ),
    .target(
      name: "VxTest",
      dependencies: ["Vx"],
      path: "TestSuite/Vx"
    ),
    // ===== test executables =====
    .executableTarget(
      name: "AppTest",
      dependencies: ["TestLib", "Vx", "VxTest"],
      path: "TestSuite/AppTest"
    )
  ]
)
