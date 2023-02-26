//
//  CountryDetailView.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//

import SwiftUI

struct CountryDetail: View {
    @ObservedObject var viewModel: CountryDetailViewModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: viewModel.country.flags.png) ?? URL(string: "")) { phase in
                switch phase {
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200)
                case .empty:
                    ProgressView()
                case .failure(let error):
                    Text(error.localizedDescription)
                @unknown default:
                    ProgressView()
                }
            }
            Text("\(viewModel.country.name.common)")
                .fontWeight(.bold)
                .padding(.bottom)
                .font(Font.custom("Avenir", size: 30))
            Text("Capital: \(viewModel.country.capital?.first ?? "")")
            Text("Region: \(viewModel.country.region.rawValue)")
            Text("Subregion: \(viewModel.country.subregion ?? "")")
            Text("Population: \(viewModel.country.population)")
            Text("Area: \(Int(viewModel.country.area)) km2")
        }
        .font(Font.custom("Avenir", size: 20))
        
    }
}
