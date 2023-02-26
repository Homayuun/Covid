//
//  ViewModelFactory.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//

struct ViewModelFactory {
    
//    static var covidStats: [CovidStatsViewModel] {
//         [CovidStatsViewModel]()
//    }
    static var requestManager : RequestManager {
        RequestManager()
    }
    
    static var covidListVM: CovidListViewModel {
        CovidListViewModel(requestManager: requestManager)
    }
    
    static var countriesVM: [CountriesViewModel] {
        [CountriesViewModel]()
    }
    
    static var countriesListVM: CountriesListViewModel {
        CountriesListViewModel(requestManager: requestManager, countries: countriesVM)
    }
    
    static var stepCountModel: StepCountViewModel {
        StepCountViewModel()
    }
    
}
