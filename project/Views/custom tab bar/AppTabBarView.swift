//
//  AppTabBar.swift
//  project
//
//  Created by Homayun on 1401-12-04.
//

import SwiftUI



struct AppTabBarView: View {
    
    @State private var selection: String = "Covid"
    @State private var tabSelection: TabBarItem = .covid
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            CovidList(viewModel: ViewModelFactory.covidListVM)
                .tabBarItem(tab: .covid, selection: $tabSelection)
            
            CountriesListView(viewModel: ViewModelFactory.countriesListVM)
                .tabBarItem(tab: .countries, selection: $tabSelection)
            
            StepCountView(stepCountModel: ViewModelFactory.stepCountModel)
                .tabBarItem(tab: .steps, selection: $tabSelection)

        }
    }
}
struct AppTabBar_Previews: PreviewProvider {
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            Color.red
                .tabItem {
                    Image(systemName: "syringe")
                    Text("covid")
                }
            Color.blue
                .tabItem {
                    Image(systemName: "heart")
                    Text("steps")
                }
            Color.orange
                .tabItem {
                    Image(systemName: "globe")
                    Text("countries")
                }
        }
    }
}
