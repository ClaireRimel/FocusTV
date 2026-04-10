//
//  FocusedValues+Extensions.swift
//  TvFocusable
//
//  Created by Claire Sivadier on 05/06/2024.
//

import SwiftUI

/// Extend FocusedValues to include custom focused values used throughout the app.
extension FocusedValues {
    var focusedHouse: HogwartsHouses? {
        get { self[HouseFocusedValueKey.self] }
        set { self[HouseFocusedValueKey.self] = newValue }
    }
}
