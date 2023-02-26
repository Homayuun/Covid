//
//  CovidRequestMock.swift
//  projectTests
//
//  Created by Homayun on 1401-12-08.
//

import Foundation

@testable import project

enum CovidRequestMock: RequestProtocol {
    case getCovidMockStats
    
    var requestType: RequestType {
        .GET
    }
    var path: String {
        guard let path = Bundle.main.path(forResource: "regionData", ofType: "json")
        else { return ""}
        return path
    }
}
