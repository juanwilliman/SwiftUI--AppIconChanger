//
//  ThemeController.swift
//  AppIconChanger
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Theme Controller

class ThemeController: ObservableObject {
    
    // MARK: - Properties
        
    @AppStorage("selectedAppIcon") var selectedAppIcon: AppIcon = .light
    
    // MARK: - Init
    
    static let shared = ThemeController()
    private init() {}
    
}

// MARK: - App Icon

extension ThemeController {
    
    func selectAppIcon(_ icon: AppIcon) {
        switch icon {
        case .light:
            UIApplication.shared.setAlternateIconName(AppIcon.light.name)
            selectedAppIcon = .light
        case .dark:
            UIApplication.shared.setAlternateIconName(AppIcon.dark.name)
            selectedAppIcon = .dark
        }
    }
    
}
