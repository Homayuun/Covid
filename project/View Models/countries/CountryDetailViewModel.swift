//
//  CountryDetailViewModel.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//

import SwiftUI

class CountryDetailViewModel: ObservableObject {
    let country: CountriesViewModel
    
    init(country: CountriesViewModel) {
        self.country = country
    }
}

