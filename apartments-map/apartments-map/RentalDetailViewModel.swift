//
//  RentalDetailViewModel.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import Foundation

class RentalDetailViewModel: ObservableObject {
    @Published var detailedInfo: RentalDetail?
    @Published var isLoading = false
    @Published var errorMessage: String?

    var rentalId: Int

    init(rentalId: Int) {
        self.rentalId = rentalId
    }

    func fetchRentalDetails() {
        isLoading = true
        errorMessage = nil
        // Simulate API call
        // Example:
        // API.fetchRentalDetails(id: rentalId) { [weak self] result in
        //     DispatchQueue.main.async {
        //         self?.isLoading = false
        //         switch result {
        //         case .success(let details):
        //             self?.detailedInfo = details
        //         case .failure(let error):
        //             self?.errorMessage = error.localizedDescription
        //         }
        //     }
        // }
    }
}
