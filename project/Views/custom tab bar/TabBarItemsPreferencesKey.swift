//
//  TabBarItemsPreferencesKey.swift
//  project
//
//  Created by Homayun on 1401-12-04.
//

import Foundation
import SwiftUI

struct TabBarItemsPreferencesKey: PreferenceKey {
    static var defaultValue: [TabBarItem] = []
    
    static func reduce(value: inout [TabBarItem], nextValue: () -> [TabBarItem]) {
        value += nextValue()
    }
}

struct TabBarItemViewModifier: ViewModifier {
    let tab: TabBarItem
    @Binding var selection: TabBarItem
    
    func body(content: Content) -> some View {
        content
            .opacity(selection == tab ? 1.0 : 0.0 )
            .preference(key: TabBarItemsPreferencesKey.self, value: [tab])
    }
}
