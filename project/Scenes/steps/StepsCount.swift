//
//  StepsCount.swift
//  project
//
//  Created by Homayun on 1401-12-07.
//

import SwiftUI
import Charts

struct StepCountView: View {
    @ObservedObject var stepCountModel: StepCountViewModel
    @State private var selectedDate: Date = Date()
    
    var body: some View {
        NavigationView {
            NavigationStack {
                VStack {
                    DatePicker("Select a date", selection: $selectedDate, in: ...Date(), displayedComponents: [.date])
                        .padding(.horizontal)
                    
                    Button("Show step count") {
                        stepCountModel.fetchStepCountsPerMonth(from: selectedDate, to: Date())
                    }
                    
                    if !stepCountModel.stepCountsPerMonth.isEmpty {
                        Chart {
                            ForEach(stepCountModel.stepCountsPerMonth, id: \.self) { monthStepCount in
                                BarMark(
                                    x: .value("Month", monthStepCount.month),
                                    y: .value("Steps", monthStepCount.stepCount)
                                )
                            }
                        }
                        .foregroundStyle(Color.purple.gradient)
                        .padding()
                        
                        Text("History:")
                            .fontWeight(.bold)
                        List(stepCountModel.stepCountsPerMonth, id: \.self) { monthStepCount in
                            Text("\(monthStepCount.month)/\(monthStepCount.year): \(Int(monthStepCount.stepCount)) steps")
                                .font(Font.custom("Avenir", size: 16))
                        }
                        .listStyle(.plain)
                        .accessibilityIdentifier("stepCountList")
                        
                    } else {
                        Text("No data available.")
                            .font(Font.custom("Avenir", size: 16))
                            .padding()
                    }
                }
                .onAppear {
                    stepCountModel.requestAuthorization()
                }
            }
            .navigationTitle("Steps")
        }
    }
}
