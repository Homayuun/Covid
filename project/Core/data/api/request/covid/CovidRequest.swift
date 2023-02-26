//
//  CovidRequest.swift
//  project
//
//  Created by Homayun on 1401-12-01.
//

import Foundation

enum CovidRequest: RequestProtocol {
    
    case getCovidStats
    
    var path: String {
        APIConstants.covidPath
    }
    var params: [String : Any] {
        [:]
    }
    
    var headers: [String : String] {
        ["disableRedirect": "true"]
    }
    var requestType: RequestType {
        .GET
    }
    
    
}
