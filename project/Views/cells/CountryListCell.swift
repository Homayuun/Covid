//
//  CountriesDetailedCell.swift
//  project
//
//  Created by Homayun on 1401-12-06.
//

import SwiftUI


struct CountryListCell: View {
    
    let viewModel: CountriesViewModel
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(viewModel.name.official)
                    .fontWeight(.bold)
                HStack {
                    Text("Area: \(formatNumber(Int(viewModel.area)))")
                        .font(.caption2)
                    Text("Pop: \(formatNumber(viewModel.population))")
                        .font(.caption2)
                    Text("Cap: \(viewModel.capital?.first ?? "")")
                        .font(.caption2)
                }
                .font(Font.custom("Avenir", size: 5))
                .padding(.trailing)
            }
        }
        .padding()
        .frame(height: 60)
    }
}
