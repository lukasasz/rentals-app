//
//  MapView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI

struct MapView: View {
    var rentals: [Rental]

        var body: some View {
            Text("Map of Rentals")
        }
}

#Preview {
    MapView(rentals: [Rental(id: 1, name: "test", location: "test", price: 0, imageUrl: "")])
}
