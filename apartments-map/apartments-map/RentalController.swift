//
//  RentalController.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import Foundation
import SwiftUI
import Combine

class RentalController: ObservableObject {
    @Published var rentals: [Rental] = []

    func fetchRentals() {
        // Placeholder for actual data fetching
        
        //TODO: Implement API calls to (let's just do a JSON file for now)
        self.rentals = [
            Rental(id: 1, name: "Apartment in NYC", location: "New York", price: 3000, imageUrl:""),
            Rental(id: 2, name: "House in LA", location: "Los Angeles", price: 4500, imageUrl:"./test-house-image.jpeg")
        ]
        print("Rentals fetched")
    }
}
