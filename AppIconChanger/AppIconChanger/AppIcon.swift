//
//  AppIcon.swift
//  AppIconChanger
//
//  Created by Juan Williman on 10/7/22.
//

import Foundation

// MARK: - App Icon

enum AppIcon: String, CaseIterable {
    
    case light = "Light"
    case dark = "Dark"
    
    var name: String? {
        switch self {
        case .light:
            return nil
        case .dark:
            return "AppIcon-Dark"
        }
    }
    
}
