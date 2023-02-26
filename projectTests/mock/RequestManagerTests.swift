//
//  RequestManagerTests.swift
//  projectTests
//
//  Created by Homayun on 1401-12-08.
//

import XCTest
@testable import project

class RequestManagerTests: XCTestCase {
    private var requestManager: RequestManagerProtocol?

    override func setUp() {
      super.setUp()
      requestManager = RequestManager(apiManager: APIManagerMock())
    }
    func testRequestCovidStatss() async throws {
        
        guard let stats: CovidData = try await requestManager?.perform(CovidRequestMock.getCovidMockStats) else {
            XCTFail("Didn't get data from the request Manager")
            return
        }
        
        let first = stats.regionData.first
        let last = stats.regionData.last
        
        XCTAssertEqual(first?.country, "Philippines")
        XCTAssertEqual(first?.totalCases, 4076237)
        XCTAssertEqual(first?.newCases, 117)
        XCTAssertEqual(first?.totalDeaths, 66097)
        XCTAssertEqual(first?.newDeaths, 14)
        XCTAssertEqual(first?.population, 112508994)

        XCTAssertEqual(last?.country, "Serbia")
        XCTAssertEqual(last?.totalCases, 2490311)
        XCTAssertEqual(last?.newCases, 0)
        XCTAssertEqual(last?.totalDeaths, 17807)
        XCTAssertEqual(last?.newDeaths, 0)
        XCTAssertEqual(last?.population, 8653016)

    }

}

