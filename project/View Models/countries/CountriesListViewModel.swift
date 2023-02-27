//
//  CountriesViewModel.swift
//  project
//
//  Created by Homayun on 1401-12-06.
//

import Foundation

class CountriesListViewModel: ObservableObject {
    
    @Published var countries: [CountriesViewModel]
    @Published var searchTerm = ""

    private let requestManager: RequestManager

    init(requestManager: RequestManager, countries: [CountriesViewModel]) {
        self.requestManager = requestManager
        self.countries = countries
    }

    var filteredCountries: [CountriesViewModel] {
        if searchTerm.isEmpty {
            return countries
        } else {
            return countries.filter { country in
                country.name.common.lowercased().contains(searchTerm.lowercased())
            }
        }
    }

    func fetchCountries() async {
        do {
            let countriesData: [CountriesViewModel] = try await requestManager.perform(CountriesRequest.getCountriesDetails)
            
            DispatchQueue.main.async {
                self.countries = countriesData.sorted { $0.name.common < $1.name.common }
            }
        } catch {
            print("Decoding Error:", error)
        }
    }
    
}
