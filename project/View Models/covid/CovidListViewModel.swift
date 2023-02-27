//
//  CovidViewModel.swift
//  project
//
//  Created by Homayun on 1401-12-01.
//

import Foundation

class CovidListViewModel: ObservableObject {
    @Published var stats: [CovidStatsViewModel] = []
    @Published var searchTerm = ""
    var requestManager: RequestManagerProtocol
    
    init(requestManager: RequestManagerProtocol) {
        self.requestManager = requestManager
    }
    
    var filteredStats: [CovidStatsViewModel] {
        if searchTerm.isEmpty {
            return stats
        } else {
            return stats.filter { $0.country.lowercased().contains(searchTerm.lowercased())}
        }
    }
    func fetchCovidStats() async -> [CovidStatsViewModel] {
        do {
            let covidData: CovidData = try await requestManager.perform(CovidRequest.getCovidStats)
            DispatchQueue.main.async {
                self.stats = covidData.regionData.map(CovidStatsViewModel.init).sorted { $0.country < $1.country }
            }
            return self.stats
        } catch {
            print("Decoding Error", error.localizedDescription)
            return []
        }
    }
}



struct CovidStatsViewModel: Identifiable {
    
    let stats: CovidStats
    
    var id: String {
        stats.country
    }
    var country: String {
        stats.country
    }
    var totalDeaths: Int {
        stats.totalDeaths
    }
    var totalCases: Int {
        stats.totalCases
    }
    var totalRecovered: Int {
        stats.totalRecovered ?? 0
    }
}



