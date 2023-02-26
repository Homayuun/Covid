//
//  StepsViewModel.swift
//  project
//
//  Created by Homayun on 1401-12-06.
//
import Foundation
import HealthKit

class StepCountViewModel: ObservableObject {
    
    private let healthStore: HealthStoreProtocol
    
    @Published var stepCountsPerMonth: [MonthStepCount] = []
    
    init(healthStore: HealthStoreProtocol = HKHealthStore()) {
        self.healthStore = healthStore
    }
    
    func fetchStepCountsPerMonth(from startDate: Date, to endDate: Date) {
        let stepCount = HKQuantityType.quantityType(forIdentifier: .stepCount)
        let calendar = Calendar.current
        var interval = DateComponents()
        interval.month = 1
        
        var anchorComponents = calendar.dateComponents([.day, .month, .year], from: startDate)
        anchorComponents.hour = 0
        guard let anchorDate = calendar.date(from: anchorComponents) else { return }
        
        let query = HKStatisticsCollectionQuery(quantityType: stepCount!,
                                                quantitySamplePredicate: nil,
                                                options: .cumulativeSum,
                                                anchorDate: anchorDate,
                                                intervalComponents: interval)
        
        query.initialResultsHandler = { _, results, error in
            guard let results = results else {
                if let error = error {
                    print("Error fetching step counts per month: \(error.localizedDescription)")
                }
                return
            }
            
            var monthStepCounts: [MonthStepCount] = []
            results.enumerateStatistics(from: anchorDate, to: endDate) { (result, _) in
                let steps = result.sumQuantity()?.doubleValue(for: .count()) ?? 0
                let month = calendar.component(.month, from: result.startDate)
                let year = calendar.component(.year, from: result.startDate)
                let monthStepCount = MonthStepCount(month: month, year: year, stepCount: Int(steps))
                monthStepCounts.append(monthStepCount)
            }
            
            DispatchQueue.main.async {
                self.stepCountsPerMonth = monthStepCounts
            }
        }
        
        healthStore.execute(query)
    }
}

extension StepCountViewModel {
    
    func requestAuthorization() {
        let stepCount = HKQuantityType.quantityType(forIdentifier: .stepCount)!
        healthStore.requestAuthorization(toShare: nil, read: [stepCount]) { success, error in
            if let error = error {
                print("Error requesting HealthKit authorization: \(error.localizedDescription)")
            }
        }
    }
}
