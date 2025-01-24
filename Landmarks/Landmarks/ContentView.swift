//
//  ContentView.swift
//  Landmarks
//
//  Created by Samu Pietilä on 24.1.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading){
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    ContentView()
}
