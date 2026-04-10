//
//  CustomButtonStyle.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 04/06/2024.
//

import SwiftUI

/// Define a custom ButtonStyle to encapsulate the styling of buttons throughout the app.
public struct CustomButtonStyle: ButtonStyle {
    public func makeBody(configuration: Self.Configuration) -> some View {
        CustomButton(configuration: configuration)
            .hoverEffect(.lift)
    }
}

/// CustomButton view that applies specific styles based on the button's state.
struct CustomButton: View {
    let configuration: ButtonStyle.Configuration
    
    /// Use environment properties to adapt the UI based on state.
    @Environment(\.isFocused) private var isFocused: Bool
    
    @ViewBuilder
    var body: some View {
        configuration.label
            .padding(30)
            .background(isFocused ? .accentCustom : .neutralCustom)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    Button(action: {
        print("Hello, World!")
    }, label: {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
            
            Text("Hello, world!")
        }
    })
    .buttonStyle(CustomButtonStyle())
}
