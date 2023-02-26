//
//  CovidMock.swift
//  project
//
//  Created by Homayun on 1401-12-08.
//

import Foundation

private struct CovidMock: Decodable {
    let regionData: [CovidStats]
}

private func loadCovidData() -> [CovidStats] {
    guard let url = Bundle.main.url(
        forResource: "CovidMock",
        withExtension: "json"
    ), let data = try? Data(contentsOf: url) else { return [] }
    let decoder = JSONDecoder()
    let jsonMock = try? decoder.decode(CovidMock.self, from: data)
    return jsonMock?.regionData ?? []
}

extension CovidStats {
    static let mock = loadCovidData()
}
