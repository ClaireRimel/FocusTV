//
//  FocusSectionCenterView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI

struct CenterView: View {
    @FocusState private var focusedButton: ButtonType?
    
    var body: some View {
        HStack {
            leftButton
                .focused($focusedButton, equals: .left)
            
            Spacer()
            
            centerButton
                .focused($focusedButton, equals: .center)
            
            Spacer()
            
            rightButton
                .focused($focusedButton, equals: .right)
        }
        .buttonStyle(CustomButtonStyle())
        .defaultFocus($focusedButton, .left, priority: .userInitiated)
    }
}

private extension CenterView {
    var leftButton: some View {
        Button(action: {},
               label: {
            VStack {
                Image(systemName: "arrowshape.left.fill")
                    .imageScale(.large)
                
                Text("Left")
            }
        })
    }
    
    var centerButton: some View {
        Button(action: {},
               label: {
            VStack {
                Image(systemName: "rectangle.center.inset.filled")
                    .imageScale(.large)
                
                Text("Center")
            }
        })
    }
    
    var rightButton: some View {
        Button(action: {},
               label: {
            VStack {
                Image(systemName: "arrowshape.right.fill")
                    .imageScale(.large)
                
                Text("Right!")
            }
        })
    }
}

#Preview {
    CenterView()
}
