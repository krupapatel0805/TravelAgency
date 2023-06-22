//
//  Train.swift
//  TravelAgency_Krupa
//

import Foundation

enum CarriageType {
    case sleeper
    case seating
}

class Train: Trip {
    var departure: String
    var arrival: String
    var cost: Double {
        let costPerDay: Double
        if carriageType == .sleeper {
            costPerDay = 100 + 200
        } else {
            costPerDay = 200
        }
        return costPerDay * Double(days)
    }
    var days: Int
    var carriageType: CarriageType
    
    init(departure: String, arrival: String, days: Int, carriageType: CarriageType = .seating) {
        self.departure = departure
        self.arrival = arrival
        self.days = days
        self.carriageType = carriageType
    }
    
    func getTripDetails() {
        let carriage = carriageType == .sleeper ? "Sleeper" : "Seating"
        print("Departing: \(departure), Arriving: \(arrival), Carriage Type: \(carriage)")
    }
}
