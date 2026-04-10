//
//  OnMoveView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI

struct FocusableView: View {
    @FocusState private var isFocused: Bool
    @State private var imageName = "wand.and.stars"
    @State private var description = "Wingardium Leviosa"
    
    var body: some View {
        HStack {
            Spacer()
            
            focusableView
                .onMoveCommand { move in
                    switch move {
                    case .up:
                        imageName = "wand.and.stars"
                        description = "Wingardium Leviosa"
                        
                    case .down:
                        imageName = "arrowshape.down.fill"
                        description = "Down"
                        
                    case .left:
                        imageName = "arrowshape.left.fill"
                        description = "Left"
                        
                    case .right:
                        imageName = "arrowshape.right.fill"
                        description = "Right"
                        
                    @unknown default:
                        imageName = "nosign"
                        description = "Unknown Move"
                        
                    }
                }
                .onChange(of: isFocused) { _, isFocusedNewValue in
                    if !isFocusedNewValue {
                        imageName = "wand.and.stars"
                        description = "Wingardium Leviosa"
                    }
                }

            Spacer()
            
        }
        .focusSection()
    }
}

private extension FocusableView {
    var focusableView: some View {
        VStack {
            Image(systemName: imageName)
                .imageScale(.large)
            
            Text(description)
        }
        .padding(30)
        .focusable()
        .focused($isFocused)
        .background(isFocused ? .accentCustom : .neutralCustom)
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    FocusableView()
}
