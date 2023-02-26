//
//  CovidList.swift
//  project
//
//  Created by Homayun on 1401-12-03.
//

import SwiftUI

class CovidListCoordinator: ObservableObject, Identifiable {

    // MARK: Stored Properties

    @Published var viewModel: CovidListViewModel!

    private unowned let parent: HomeCoordinator

    // MARK: Initialization

    init(title: String, parent: HomeCoordinator, viewModel: CovidListViewModel, requestManager: RequestManager, stats: [CovidStatsViewModel]) {
        self.parent = parent
        self.viewModel = .init(coordinator: parent.covidCoordinator, title: title, requestManager: requestManager, stats: stats )
    }

}
