//
//  ContentView.swift
//  apartments-map
//
//  Created by Lukas on 5/5/24.
//

import SwiftUI
import CoreData
import MapKit
import UIKit

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @State private var isReadyToShowHome = false
    
    
    var body: some View {
            VStack {
                if isReadyToShowHome {
                    RootView()
                } else {
                    Text("Loading...")
                        .onAppear {
                            prepareForRootView()
                        }
                }
            }
        }
    
    private func prepareForRootView() {
            // Simulate some initial setup tasks
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // Simulate a loading task
                isReadyToShowHome = true
            }
        }


//    struct CityAnnotation: Identifiable {
//        let id = UUID()
//        var name: String
//        var coordinate: CLLocationCoordinate2D
//    }
//
//    @State private var cameraPosition = MapCameraPosition.region(MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060),
//        span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//    ))
    
//
//    let cityAnnotation = CityAnnotation(name: "New York City", coordinate: CLLocationCoordinate2D(latitude: 40.7128, longitude: -74.0060));

//    var body: some View {
//    Map(position: $cameraPosition) { }
//        frame(height: 300)  // Adjust this value to make the map smaller
//                    .edgesIgnoringSafeArea(.all)
//                    .mapStyle(.standard)  // Adjust map style as needed
//
//                    HStack {
//                        Button("Zoom In") {
//                            withAnimation {
//                                cameraPosition.altitude *= 0.7
//                            }
//                        }
//                        Button("Zoom Out") {
//                            withAnimation {
//                                cameraPosition.altitude /= 0.7
//                            }
//                        }
//                    }
//    }
//    var body: some View {
//            VStack {
//                Map(position: $cameraPosition) {
//                    // Add map annotations if needed here
//                }
//                .frame(height: 300)  // Adjust the height to make the map smaller
//                .mapStyle(.standard)
//                .edgesIgnoringSafeArea(.all)
//
//                HStack {
//                    Button("Zoom In") {
//                        self.position(x: cameraPosition.region?.span.longitudeDelta * 0.9, y: cameraPosition.region?.span.longitudeDelta * 0.9);
////                        cameraPosition.region?.span.longitudeDelta *= 0.9
//                        
//                    }
//                    .padding()
//                    Button("Zoom Out") {
//                        self.zoomOut()
//                    }
//                    .padding()
//                }
//            }
//        }


    
    
    

}




//struct Address: Identifiable {
//    let id = UUID()
//    let coordinate: CLLocationCoordinate2D
//}

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
