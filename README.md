# COVID & Countries & Steps iOS App 

This document describes the COVID & Steps iOS App, which displays information about COVID-19 cases and their status worldwide and tracks the user's steps using the Apple HealthKit API. The app uses the following frameworks:

SwiftUI: For building the user interface
URLSession: For making HTTP requests and retrieving data from the APIs
JSONSerialization: For parsing JSON responses from the APIs
HealthKit: For tracking the user's steps data

# Installation

To install the COVID & Steps iOS App, follow these steps:

Clone the repository to your local machine:

1. git clone https://github.com/your-username/Covid-Steps.git
2. Open the Covid-Steps.xcodeproj file in Xcode.
3. Build and run the app using the Xcode simulator or on a physical iOS device.

# Features

The COVID & Steps iOS App provides the following features:

# Latest COVID-19 data

The app retrieves the latest COVID-19 data from the COVID-19 Data API and displays the data in a table view. The table view shows the number of confirmed cases, deaths, and recoveries for each country.

# Country information

The app also displays information about all the countries in the world. This information is retrieved from the Country Information API and displayed in a separate table view. The table view shows the country name, population, area, and flag.

# HealthKit Integration

The app integrates with the Apple HealthKit API to track the user's steps data. The app displays the number of steps taken in the current month in a separate table view. The user can also view their step data in a graph view.

