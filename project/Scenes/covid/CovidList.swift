//
//  ContentView.swift
//  project
//
//  Created by Homayun on 1401-11-30.
//

import SwiftUI

struct CovidList: View {
    
    @ObservedObject var viewModel: CovidListViewModel
    
    var body: some View {
        NavigationView {
            NavigationStack {
                List {
                    ForEach(viewModel.filteredStats, id: \.id) { stat in
                        CovidStatsCell(covidStats: stat)
                    }
                }
                .listStyle(.plain)
                .task {
                    await viewModel.fetchCovidStats()
                }
            }
            .navigationTitle("Latest Stats")
        }
        .searchable(text: $viewModel.searchTerm)

    }
}
