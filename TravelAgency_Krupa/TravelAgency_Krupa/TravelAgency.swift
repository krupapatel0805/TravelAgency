//
//  TravelAgency.swift
//  TravelAgency_Krupa
//

import Foundation

class TravelAgency {
    func makeReservation(for traveller: Traveller, date: String, trip: Trip) -> Bool {
        if let flight = trip as? Flight {
            if traveller.passportNumber == nil {
                print("Reservation failed: \(traveller.name) does not have a passport.")
                return false
            }
            if let passportNumber = traveller.passportNumber, !(1000...9999).contains(passportNumber) {
                print("Reservation failed: \(traveller.name) due to invalid passport number.")
                return false
            }
        }
        
        let reservationId = generateReservationId(trip: trip)
        let reservation = Reservation(reservationId: reservationId, date: date, trip: trip)
        traveller.reservationsList.append(reservation)
        
        print("Reservation successfull: \(traveller.name) reservation is created.")
        return true
    }
    
    private func generateReservationId(trip: Trip) -> String {
        let randomNum = Int.random(in: 500...700)
        let reservationType = trip is Flight ? "F" : "T"
        return "\(randomNum)-\(reservationType)"
    }
}
