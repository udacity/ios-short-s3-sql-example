// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "MySQLTester",

    targets: [
        Target(name: "MySQLTester")
    ],

    dependencies: [
        .Package(url: "https://github.com/nicholasjackson/swift-mysql.git", majorVersion: 1, minor: 3)
    ]
)
