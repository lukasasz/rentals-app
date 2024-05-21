//
//  ListView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI
//import Kingfisher

struct ListView: View {
    var rentals: [Rental]

    var body: some View {
        
        // BIG TODO: Partition data to load first X records.
        
        List(rentals, id: \.id) { rental in
            NavigationLink(destination: DetailView(rental: rental)) {
                HStack {
                    AsyncImageView(imageURL: rental.imageUrl)  // Assume `imageUrl` is a String?
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .cornerRadius(10)
                    VStack(alignment: .leading) {
                        Text(rental.name).bold()
                        Text(rental.location)
                        Text("$\(rental.price, specifier: "%.2f")")
                    }
                }
            }
        }
    }
}

#Preview {
    ListView(rentals: [Rental(id: 1, name: "test", location: "test", price: 0, imageUrl: Constants.defaultListViewPreviewImage)])
}
