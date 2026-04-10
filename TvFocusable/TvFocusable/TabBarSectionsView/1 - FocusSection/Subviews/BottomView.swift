//
//  FocusSectionBottomView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI

struct BottomView: View {
    @FocusState private var isFocused: Bool
    
    var body: some View {
        HStack {
            moonButton
                .focused($isFocused)
            
            Spacer()
        }
    }
}

private extension BottomView {
    var moonButton: some View {
        Button(action: {},
               label: {
            VStack {
                Image(systemName: "moon.stars.fill")
                    .imageScale(.large)
                
                Text("Moon")
                
            }
        })
        .buttonStyle(CustomButtonStyle())
    }
}

#Preview {
    BottomView()
}
