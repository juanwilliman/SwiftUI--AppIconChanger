//
//  ContentView.swift
//  AppIconChanger
//
//  Created by Juan Williman on 10/7/22.
//

import SwiftUI

// MARK: - Content View

struct ContentView: View {
    
    // MARK: - Properties
    
    @StateObject private var themeController = ThemeController.shared
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 50) {
            ForEach(AppIcon.allCases, id: \.self) { appIcon in
                Button(action: { themeController.selectAppIcon(appIcon) }) {
                    VStack {
                        Image(appIcon.rawValue)
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .center)
                            .cornerRadius(10)
                        Text(appIcon.rawValue)
                    }
                }
            }
        }
        .padding(25)
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
