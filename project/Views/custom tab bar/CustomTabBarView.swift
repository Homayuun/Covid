//
//  CustomTabBarView.swift
//  project
//
//  Created by Homayun on 1401-12-04.
//

import SwiftUI

struct CustomTabBarView: View {
    
    let tabs: [TabBarItem]
    @Binding var selection: TabBarItem
    @Namespace var namespace
    @State var localSelection: TabBarItem
    
    var body: some View {
        tabBar
            .onChange(of: selection, perform: { value in
                withAnimation(.easeInOut) {
                    localSelection = value
                }
            })
    }
    
}


struct CustomTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        .covid, .countries, .steps
    ]
    
    static var previews: some View {
        CustomTabBarView(tabs: tabs, selection: .constant(tabs.first!), localSelection: .covid)
    }
}


