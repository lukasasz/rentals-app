//
//  RentalsModel.swift
//  apartments-map
//
//  Created by Lukas on 5/10/24.
//

import Foundation

struct Rental: Identifiable, Codable {
    var id: Int
    var name: String
    var location: String
    var price: Double
    var imageUrl: String
}
