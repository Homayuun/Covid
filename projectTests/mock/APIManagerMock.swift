//
//  APIManagerMock.swift
//  projectTests
//
//  Created by Homayun on 1401-12-08.
//

@testable import project
import Foundation

struct APIManagerMock: APIManagerProtocol {
    
    func perform(_ request: RequestProtocol, authToken: String) async throws -> Data {
        return try Data(contentsOf: URL(fileURLWithPath: request.path), options: .mappedIfSafe)
    }
}
