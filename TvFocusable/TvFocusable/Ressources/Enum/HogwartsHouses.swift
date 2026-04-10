//
//  HogwartsHouses.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI


enum HogwartsHouses: CaseIterable {
    case gryffindor,
         hufflepuff,
         ravenclaw,
         slytherin
    
    var visuals: HogwartsHouseVisuals {
        switch self {
        case .gryffindor:
            HogwartsHouseVisuals(backgroundColor: Color(.gryffindorBG),
                                 highlightColor:  Color(.gryffindorHL),
                                 icon: "🦁",
                                 crest: Image(.gryffindorCrest))
        case .hufflepuff:
            HogwartsHouseVisuals(backgroundColor: Color(.hufflepuffBG),
                                 highlightColor: Color(.hufflepuffHL),
                                 icon: "🦝",
                                 crest: Image(.hufflepuffCrest))
        case .ravenclaw:
            HogwartsHouseVisuals(backgroundColor: Color(.ravenclawBG),
                                 highlightColor: Color(.ravenclawHL),
                                 icon: "🦅",
                                 crest: Image(.ravenclawCrest))
        case .slytherin:
            HogwartsHouseVisuals(backgroundColor: Color(.slytherinBG),
                                 highlightColor: Color(.slytherinHL),
                                 icon: "🐍",
                                 crest: Image(.slytherinCrest))
        }
    }
}
