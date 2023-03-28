// ********************** MainViewModel *********************************
// * Copyright © United Airlines - All Rights Reserved
// * Created on 3/28/23, for IATA
// * Matthew Elmore <matthew.elmore@united.com>
// * Unauthorized copying of this file is strictly prohibited
// ********************** MainViewModel *********************************


import SwiftUI


class MainViewModel: ObservableObject {
    
    @Published var searchIATA: String = ""
    @Published var airports: [Airport] = []
    @Published var filteredResults: [Airport] = []
    
    public init() {
        if let jsonLocation = Bundle.main.url(forResource: "AirportIATA", withExtension: "json") {
            do {
                let data = try Data(contentsOf: jsonLocation)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(AirportContainer.self, from: data)
                airports = jsonData.airports
                filteredResults = airports

            } catch {
                print(error)
            }
        }
    }
    
    
    public func filterBy_IATA(_ iataCode: String) {
        let iataCode = iataCode.uppercased()
        filteredResults = airports.filter { $0.iata == iataCode }
    }
    
}


