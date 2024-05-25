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
        NavigationStack {
            HStack(spacing: 50) {
                ForEach(AppIcon.allCases, id: \.self) { appIcon in
                    Button(action: { themeController.selectAppIcon(appIcon) }) {
                        VStack(spacing: 10) {
                            Image(appIcon.rawValue)
                                .resizable()
                                .frame(width: 70, height: 70, alignment: .center)
                                .cornerRadius(18)
                                .shadow(color: .black.opacity(0.15), radius: 10, x: 0, y: 10)
                            Text(appIcon.rawValue)
                                .foregroundStyle(.primary)
                                .padding(.top, 10)
                            Image(systemName: themeController.selectedAppIcon == appIcon ? "checkmark.circle.fill" : "circle")
                                .foregroundStyle(Color.accentColor)
                        }
                    }
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Icon Changer")
        }
    }
}

// MARK: - Preview

#Preview {
    ContentView()
}
