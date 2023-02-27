//
//  CountryList.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//
import SwiftUI

struct CountriesListView: View {
    @ObservedObject var viewModel: CountriesListViewModel

    var body: some View {
        NavigationView {
            NavigationStack {
                List {
                    ForEach(viewModel.filteredCountries, id: \.id) { country in
                        NavigationLink(destination: CountryDetail(viewModel: CountryDetailViewModel(country: country))) {
                            CountryListCell(viewModel: country)
                        }
                    }
                }
                .task {
                    await viewModel.fetchCountries()
                }
                .listStyle(.plain)
                .navigationTitle("Country Pedia")
            }
            .searchable(text: $viewModel.searchTerm)
        }
    }
}

