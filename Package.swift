// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QualarooModules",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Qualaroo",
            targets: ["Qualaroo"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "9.2.1"),
        .package(url: "https://github.com/Quick/Quick", from: "5.0.0"),
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Qualaroo",
            dependencies: [],
            resources: [
                .process("Qualaroo/Survey/QualarooStoryboard.storyboard"),
                .process("Qualaroo/QualarooImages.xcassets"),
                .process("Qualaroo/Survey/Footer/SurveyButtonsView.xib"),
                .process("Qualaroo/Survey/Body/Question/Dropdown/AnswerDropdownView.xib"),
                .process("Qualaroo/Survey/Body/Question/Thumb/AnswerThumbView.xib"),
                .process("Qualaroo/Survey/Body/Question/Emoji/AnswerEmojiView.xib"),
                .process("Qualaroo/Survey/Body/Question/NPS/AnswerNpsView.xib"),
                .process("Qualaroo/Survey/Body/Question/List/Cell/SelectableView.xib"),
                .process("Qualaroo/Survey/Body/Question/List/AnswerListView.xib"),
                .process("Qualaroo/Survey/Body/Question/Text/AnswerTextView.xib"),
                .process("Qualaroo/Survey/Body/LeadGenForm/LeadGenFormView.xib"),
                .process("Qualaroo/Survey/Body/LeadGenForm/Cell/LeadGenFormCell.xib"),
                .process("Qualaroo/Survey/Header/Binary/AnswerBinaryView.xib"),
                .process("Qualaroo/Survey/Header/SurveyHeaderView.xib"),
            ]),
        .testTarget(
            name: "QualarooTests",
            dependencies: [
                "Quick",
                "Nimble",
                "Qualaroo",
            ]),
    ]
)
