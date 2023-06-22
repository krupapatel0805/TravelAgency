//
//  Traveller.swift
//  TravelAgency_Krupa
//

import Foundation

class Traveller {
    var name: String
    var passportNumber: Int?
    var phoneNumber: String
    var reservationsList: [Reservation] = []
    
    init(name: String, phoneNumber: String) {
        self.name = name
        self.phoneNumber = phoneNumber
    }
    
    init(name: String, passportNumber: Int, phoneNumber: String) {
        self.name = name
        self.passportNumber = passportNumber
        self.phoneNumber = phoneNumber
    }
    
    var balance: Double {
        return reservationsList.reduce(0.0) { $0 + $1.trip.cost }
    }
}
