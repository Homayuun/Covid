//
//  Extensions + View.swift
//  project
//
//  Created by Homayun on 1401-12-05.
//

import SwiftUI

extension View {
    func tabBarItem(tab: TabBarItem, selection: Binding<TabBarItem>) -> some View {
        modifier(TabBarItemViewModifier(tab: tab, selection: selection))
    }
}
