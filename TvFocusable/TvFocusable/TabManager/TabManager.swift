//
//  TabManager.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 04/06/2024.
//

import SwiftUI

struct TabManager: View {
    
    var body: some View {
        TabView {
            focusSection
            onMoveSection
            focusedValueSection
        }
    }
}

private extension TabManager {
    var focusSection: some View {
        FocusSectionView()
            .tabItem { Text("Focus Section") }
    }
    
    var onMoveSection: some View {
        FocusableView()
            .tabItem { Text("Focusable") }
    }
    
    var focusedValueSection: some View {
        FocusedValueView()
            .tabItem { Text("Focused Value") }
    }
    
}

#Preview {
    TabManager()
}
