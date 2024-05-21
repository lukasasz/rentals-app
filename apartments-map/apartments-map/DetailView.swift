//
//  DetailView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI

struct DetailView: View {

    
    var rental: Rental
    @State private var detailedInfo: RentalDetail?

    var body: some View {
        VStack {
            if let detailedInfo = detailedInfo {
                Text("More detailed information here")
                // Display more detailed information
//                Text(detailedInfo.description) // Example property
            } else {
                Text("Loading...")
                    .onAppear {
                        fetchRentalDetails()
                    }
            }
        }
        .navigationTitle(rental.name)
        .navigationBarTitleDisplayMode(.inline)
    }

    private func fetchRentalDetails() {
        // Assuming a function that fetches more details based on the rental's ID
        // Example: API.fetchRentalDetails(id: rental.id) { result in
        //     switch result {
        //     case .success(let details):
        //         self.detailedInfo = details
        //     case .failure(let error):
        //         print("Error fetching details: \(error)")
        //     }
        // }
    }
}

#Preview {
    DetailView()
}
