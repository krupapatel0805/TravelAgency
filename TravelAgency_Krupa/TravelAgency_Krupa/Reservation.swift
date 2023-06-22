//
//  Reservation.swift
//  TravelAgency_Krupa
//

import Foundation

class Reservation {
    var reservationId: String
    var date: String
    var trip: Trip
    
    init(reservationId: String, date: String, trip: Trip) {
        self.reservationId = reservationId
        self.date = date
        self.trip = trip
    }
    
    func display() {
        print("Reservation ID: \(reservationId)-\(reservationType())")
        print("Date of Departure: \(date)")
        trip.getTripDetails()
    }
    
    private func reservationType() -> String {
        return trip is Flight ? "F" : "T"
    }
}
