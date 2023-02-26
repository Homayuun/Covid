//
//  CovidStatsCell.swift
//  project
//
//  Created by Homayun on 1401-12-03.
//

import SwiftUI

struct CovidStatsCell: View {
    
    let covidStats: CovidStatsViewModel
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text(covidStats.country)
                    .fontWeight(.bold)
                HStack {
                    Text("total: \(formatNumber(covidStats.totalCases))")
                        .font(.caption2)
                    Text("deaths: \(formatNumber(covidStats.totalDeaths))")
                        .font(.caption2)
                    Text("recovered: \(formatNumber(covidStats.totalRecovered))")
                        .font(.caption2)
                }
                .padding(.trailing)
            }
        }
        .padding()
        .frame(height: 60)
    }
}

