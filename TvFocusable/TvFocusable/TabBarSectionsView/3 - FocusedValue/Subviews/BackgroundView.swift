//
//  BackgroundView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI

struct BackgroundView: View {
    @FocusedValue(\.focusedHouse) var focusedHouse: HogwartsHouses?
    
    var body: some View {
        focusedHouse?.visuals.backgroundColor
            .ignoresSafeArea()
        
        if let icon = focusedHouse?.visuals.icon {
            VStack {
                Text(" You are focusing: \(icon)")
                    .font(.largeTitle)
                    .foregroundStyle(focusedHouse?.visuals.highlightColor ?? .clear)
                
                Spacer()
            }
        }
    }
}

#Preview {
    BackgroundView()
}
