//
//  File.swift
//  projectTests
//
//  Created by Homayun on 1401-12-07.
//

import XCTest
import SwiftUI
@testable import project

class StepCounterTests: XCTestCase {
    
    func testStepCountViewModelFetchesCorrectStepCountsPerMonth() {
        let viewModel = StepCountViewModel()
        let startDate = Date()
        let endDate = Date()
        
        let expect = expectation(description: "Fetch steps per month")
        viewModel.fetchStepCountsPerMonth(from: startDate, to: endDate)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            XCTAssertGreaterThan(viewModel.stepCountsPerMonth.count, 0)
            expect.fulfill()
        }
        
        waitForExpectations(timeout: 3, handler: nil)
    }

}
