//
//  ThemeController.swift
//  AppIconChanger
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Theme Controller

class ThemeController: ObservableObject {
    
    // MARK: - Variables
        
    @AppStorage("selectedAppIcon") var selectedAppIcon: AppIcon = .light
    
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
