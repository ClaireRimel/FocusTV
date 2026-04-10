//
//  FocusSectionView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 04/06/2024.
//

import SwiftUI

struct FocusSectionView: View {
    var body: some View {
        VStack() {
            hereSection
                .focusSection()

            Spacer()
            
            helloButton
            
            Spacer()
            
            CenterView()
            
            Spacer()
            
            BottomView()
                .focusSection()
        }
        .padding()
    }
}

private extension FocusSectionView {
    var hereButton: some View {
        Button {} label: {
            Text("Here 👋")
                .font(.system(size: 12))
                .padding()
        }
        .buttonStyle(.card)
    }
    
    var helloButton: some View {
        Button {} label: {
            HStack {
                Spacer()
                
                Text("HEELLOO 😃")
                    .padding()
                
                Spacer()
            }
        }
        .buttonStyle(.card)
    }
    
    var hereSection: some View {
        HStack {
            Spacer()
            
            hereButton
            
            Spacer()
        }
    }
}

#Preview {
    FocusSectionView()
}
