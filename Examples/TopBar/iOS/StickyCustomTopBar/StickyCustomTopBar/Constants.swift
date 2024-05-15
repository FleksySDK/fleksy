//
//  Constants.swift
//  StickyCustomTopBar
//
//  Copyright © 2024 Thingthing,Ltd. All rights reserved.
//  Licensed under the MIT license. See LICENSE file in the project root for details
//

import Foundation

enum Constants {
    enum App {
        static let keyboardExtensionBundleId = Bundle.main.bundleIdentifier! + ".keyboard"
        static var versionAndBuild: String {
            versionAndBuild(forBundle: Bundle.main)
        }
        
        static var keyboardSDKVersionAndBuild: String {
            guard let bundle = Bundle(identifier: "co.thingthing.FleksyKeyboardSDK") else {
                return "-"
            }
            return versionAndBuild(forBundle: bundle)
        }
        
        private static func versionAndBuild(forBundle bundle: Bundle) -> String {
            let version = bundle.infoDictionary?["CFBundleShortVersionString"] as? String ?? ""
            let build = bundle.infoDictionary?["CFBundleVersion"] as? String ?? ""
            return "\(version) (\(build))"
        }
    }
}
