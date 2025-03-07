//
//  Coordinates.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import SwiftUI
import MapKit
import CoreLocation

struct ConstituencyLocation: Identifiable {
    var id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

let constituencyLocations: [ConstituencyLocation] = [
    ConstituencyLocation(name: "Helsinki", coordinate: CLLocationCoordinate2D(latitude: 60.1695, longitude: 24.9354)),
    ConstituencyLocation(name: "Uusimaa", coordinate: CLLocationCoordinate2D(latitude: 60.2941, longitude: 25.0400)),
    ConstituencyLocation(name: "Pirkanmaa", coordinate: CLLocationCoordinate2D(latitude: 61.4978, longitude: 23.7610)),
    ConstituencyLocation(name: "Häme", coordinate: CLLocationCoordinate2D(latitude: 60.9965, longitude: 24.4594)),
    ConstituencyLocation(name: "Varsinais-Suomi", coordinate: CLLocationCoordinate2D(latitude: 60.4545, longitude: 22.2647)),
    ConstituencyLocation(name: "Satakunta", coordinate: CLLocationCoordinate2D(latitude: 61.4681, longitude: 21.7749)),
    ConstituencyLocation(name: "Kaakkois-Suomi", coordinate: CLLocationCoordinate2D(latitude: 60.9817, longitude: 27.6820)),
    ConstituencyLocation(name: "Savo-Karjala", coordinate: CLLocationCoordinate2D(latitude: 62.6010, longitude: 29.7636)),
    ConstituencyLocation(name: "Oulu", coordinate: CLLocationCoordinate2D(latitude: 65.0121, longitude: 25.4651)),
    ConstituencyLocation(name: "Lappi", coordinate: CLLocationCoordinate2D(latitude: 66.5009, longitude: 25.7154)),
    ConstituencyLocation(name: "Vaasa", coordinate: CLLocationCoordinate2D(latitude: 63.0951, longitude: 21.6165)),
    ConstituencyLocation(name: "Keski-Suomi", coordinate: CLLocationCoordinate2D(latitude: 62.2426, longitude: 25.7473)),
    ConstituencyLocation(name: "Ahvenanmaa", coordinate: CLLocationCoordinate2D(latitude: 60.1165, longitude: 19.8986))
]

struct Coordinates: View {
    var constituency: String
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 60.0, longitude: 25.0),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
    )
    
    @State private var markerCoordinates: [ConstituencyLocation] = constituencyLocations
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: markerCoordinates) { location in
            MapPin(coordinate: location.coordinate, tint: .red)
        }
        .onAppear {
            self.setRegion(for: constituency)
        }
        .padding()
    }
    
    private func setRegion(for constituency: String) {
        if let location = markerCoordinates.first(where: { $0.name == constituency }) {
            self.region = MKCoordinateRegion(
                center: location.coordinate,
                span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
            )
        }
    }
}

