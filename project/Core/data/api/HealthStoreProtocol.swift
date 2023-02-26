//
//  HealthStoreProtocol.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//
import HealthKit

protocol HealthStoreProtocol {
    func requestAuthorization(toShare typesToShare: Set<HKSampleType>?,
                              read typesToRead: Set<HKObjectType>?,
                              completion: @escaping (Bool, Error?) -> Void)
    func execute(_ query: HKQuery)
}

extension HKHealthStore: HealthStoreProtocol {}
