//
//  main.swift
//  TravelAgency_Krupa
//

import Foundation

// Create a FLIGHT object
let flight = Flight(departure: "CDG", arrival: "NRT", flightNumber: "NAC100", distance: 5000.25)

// Create objects to represent the TRAIN trips
let train1 = Train(departure: "Seattle", arrival: "New Orleans", days: 5, carriageType: .sleeper)
let train2 = Train(departure: "New York", arrival: "Washington DC", days: 2, carriageType: .seating)
let train3 = Train(departure: "California", arrival: "Texas", days: 3, carriageType: .seating)

// Create 3 travellers
let traveller1 = Traveller(name: "Traveller #1", phoneNumber: "1234567890")
let traveller2 = Traveller(name: "Traveller #2", passportNumber: 123, phoneNumber: "2345678901")
let traveller3 = Traveller(name: "Traveller #3", passportNumber: 8000, phoneNumber: "3456789012")

// Create a Travel Agency object
let travelAgency = TravelAgency()

// Create FLIGHT reservations
let flightReservation1 = travelAgency.makeReservation(for: traveller1, date: "2022-03-18", trip: flight)
let flightReservation2 = travelAgency.makeReservation(for: traveller2, date: "2022-03-18", trip: flight)
let flightReservation3 = travelAgency.makeReservation(for: traveller3, date: "2022-03-18", trip: flight)

// Output flight details
print("\n--- Flight Details ---")
flight.getTripDetails()
print("Distance: \(flight.distance) km")
print("Cost: $\(flight.cost)")

// Create TRAIN reservations
let trainReservation1 = travelAgency.makeReservation(for: traveller1, date: "2022-03-18", trip: train1)
let trainReservation2 = travelAgency.makeReservation(for: traveller3, date: "2022-03-18", trip: train2)

// Output train details
print("\n--- Train Details ---")
print("Train 1:")
train1.getTripDetails()
print("Train 2:")
train2.getTripDetails()
print("Train3:")
train3.getTripDetails()

// Output reservation details for Traveller 2
print("\n--- Reservation Details for Traveller 2 ---")
if traveller2.reservationsList.isEmpty {
    print("No reservations found for Traveller 2.")
} else {
    for (index, reservation) in traveller2.reservationsList.enumerated() {
        print("Reservation \(index + 1):")
        reservation.display()
        print("--------------------")
    }
}

// Output reservation details for Traveller 3
print("\n--- Reservation Details for Traveller 3 ---")
if traveller3.reservationsList.isEmpty {
    print("No reservations found for Traveller 3.")
} else {
    for (index, reservation) in traveller3.reservationsList.enumerated() {
        print("Reservation \(index + 1):")
        reservation.display()
        print("--------------------")
    }
}

// Output the total number of reservations and amount owed for Traveller 2
print("\n--- Traveller 2 ---")
print("Total Reservations: \(traveller2.reservationsList.count)")
print("Amount Owed: $\(traveller2.balance)")

// Output the total number of reservations and amount owed for Traveller 3
print("\n--- Traveller 3 ---")
print("Total Reservations: \(traveller3.reservationsList.count)")
print("Amount Owed: $\(traveller3.balance)")
