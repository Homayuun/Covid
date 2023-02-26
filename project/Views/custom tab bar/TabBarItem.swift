//
//  TabBarItem.swift
//  project
//
//  Created by Homayun on 1401-12-04.
//

import SwiftUI

enum TabBarItem: Hashable {
    case covid, countries, steps
    
    var iconName: String {
        switch self {
        case .covid: return "syringe"
        case .countries: return "globe"
        case .steps: return "heart"
        }
    }
    var title: String {
        switch self {
        case .covid: return "covid"
        case .countries: return "countries"
        case .steps: return "steps"
        }
    }
    var color: Color {
        switch self {
        case .covid: return Color.gray
        case .countries: return Color.gray
        case .steps: return Color.gray
        }
    }

}
