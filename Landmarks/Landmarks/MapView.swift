//
//  MapView.swift
//  Landmarks
//
//  Created by Samu Pietilä on 24.1.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center:     CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            )
    }
}

#Preview {
    MapView()
}
