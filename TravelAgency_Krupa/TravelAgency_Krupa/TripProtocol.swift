//
//  TripProtocol.swift
//  TravelAgency_Krupa
//

import Foundation

protocol Trip {
    var departure: String { get }
    var arrival: String { get }
    var cost: Double { get }
    func getTripDetails()
}
