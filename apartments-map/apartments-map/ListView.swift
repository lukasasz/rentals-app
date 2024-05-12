//
//  ListView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI

struct ListView: View {
    var rentals: [Rental]

        var body: some View {
            List(rentals, id: \.id) { rental in
                Text(rental.name)
            }
        }
}

#Preview {
    ListView(rentals: [Rental(id: 1, name: "test", location: "test", price: 0)])
}
