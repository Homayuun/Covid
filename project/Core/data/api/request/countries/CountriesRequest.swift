//
//  CountriesRequest.swift
//  project
//
//  Created by Homayun on 1401-12-06.
//

import Foundation

enum CountriesRequest: RequestProtocol {
    
    case getCountriesDetails
    
    var host: String {
        APIConstants.countriesHost
    }
    var path: String {
        APIConstants.countiresPath
    }    
    var requestType: RequestType {
        .GET
    }
}

