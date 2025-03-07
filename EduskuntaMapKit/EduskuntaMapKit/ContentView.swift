//
//  ContentView.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import SwiftUI
import SwiftData
import MapKit

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                NavigationLink(destination: MapView()) {
                    Text("Selaa vaalipiireittäin")
                        .font(Font.title)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                        
                }

                Spacer()
                NavigationLink(destination: Partylist()) {
                    Text("Selaa puolueittain")
                        .font(Font.title)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .navigationTitle("Valikko")
        }
    }
}

#Preview {
    ContentView()
}
