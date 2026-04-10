//
//  FocusedValueView.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 04/06/2024.
//

import SwiftUI

struct FocusedValueView: View {
    @FocusState private var focusedHouse: HogwartsHouses?
    @State private var shouldShowMacExample = false
    
    var body: some View {
        VStack {
            Spacer()
            
            hogwartsHousesStack
            
            Spacer()
            
            if shouldShowMacExample {
                macExampleNavigationLink
            }
        }
        .animation(.easeInOut, value: shouldShowMacExample)
        .background {
            BackgroundView()
        }
    }
}

private extension FocusedValueView {
    var hogwartsHousesStack: some View {
        HStack {
            Spacer()
            
            ForEach(HogwartsHouses.allCases, id: \.self) { house in
                Button(action: {
                    shouldShowMacExample.toggle()
                }) {
                    house.visuals.crest
                }
                .focused($focusedHouse, equals: house)
                .focusedValue(\.focusedHouse, house)
            }
            
            Spacer()
        }
        .defaultFocus($focusedHouse, .gryffindor, priority: .userInitiated)
    }
    
    var macExampleNavigationLink: some View {
        HStack {
            Spacer()
            
            NavigationLink("Example on macOS focus cookbook App",
                           destination: FocusCookBookVideo())
            
            Spacer()
        }
        .focusSection()
    }
}

#Preview {
    FocusedValueView()
}
