//
//  TvFocusableApp.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 04/06/2024.
//

import SwiftUI

@main
struct TvFocusableApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                TabManager()
            }
            .background(.primaryCustom)
        }
    }
}
