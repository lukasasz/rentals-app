//
//  RootView.swift
//  apartments-map
//
//  Created by Lukas on 5/11/24.
//

import SwiftUI

struct RootView: View {
    @ObservedObject var controller = RentalController()
    
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink(destination: ListView(rentals: controller.rentals)) {
                    Text("List View")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                NavigationLink(destination: MapView(rentals: controller.rentals)){
                    Text("Map View")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                Button("Fetch Rentals") {
                    controller.fetchRentals()
                }
                .foregroundColor(.white)
                .padding()
                .background(Color.red)
                .cornerRadius(10)
            }
            .navigationTitle("Rental Options")
            
        }
    }
}

#Preview {
    RootView()
}
