//
//  Flight.swift
//  TravelAgency_Krupa
//

import Foundation

class Flight: Trip {
    var departure: String
    var arrival: String
    var cost: Double {
        return 1000 + (0.75 * distance)
    }
    var flightNumber: String
    var distance: Double
    
    init(departure: String, arrival: String, flightNumber: String, distance: Double) {
        self.departure = departure
        self.arrival = arrival
        self.flightNumber = flightNumber
        self.distance = distance
    }
    
    func getTripDetails() {
        print("Flight \(flightNumber), Departing \(departure) and arriving \(arrival)")
    }
}
