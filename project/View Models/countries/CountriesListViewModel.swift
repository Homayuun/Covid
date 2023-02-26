//
//  CountriesViewModel.swift
//  project
//
//  Created by Homayun on 1401-12-06.
//

import Foundation

class CountriesListViewModel: ObservableObject {
    
    @Published var countries: [CountriesViewModel]
    private let requestManager: RequestManager
    
    init(requestManager: RequestManager, countries: [CountriesViewModel]) {
        self.requestManager = requestManager
        self.countries = countries
    }

    func fetchCountries() async {
        do {
            let countriesData: [CountriesViewModel] = try await requestManager.perform(CountriesRequest.getCountriesDetails)
            
            DispatchQueue.main.async {
                self.countries = countriesData.sorted { $0.name.official < $1.name.official }
            }
        } catch {
            print("Decoding Error:", error)
        }
    }
    
}
