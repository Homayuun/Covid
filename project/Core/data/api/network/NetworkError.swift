//
//  NetworkError.swift
//  project
//
//  Created by Homayun on 1401-12-01.
//

import Foundation

public enum NetworkError: LocalizedError {
    
  case invalidServerResponse
  case invalidURL
    
  public var errorDescription: String? {
    switch self {
    case .invalidServerResponse:
      return "The server returned an invalid response."
    case .invalidURL:
      return "URL string is invalid."
    }
  }
}
