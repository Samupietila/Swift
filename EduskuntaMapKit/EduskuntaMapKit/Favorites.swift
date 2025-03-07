//
//  Favorites.swift
//  EDUSUKUNTA IS SAVED
//
//  Created by Samu Pietilä on 28.2.2025.
//

import SwiftUI
import SwiftData

struct Favorites: View {
    var profiles: [Profile2]
    var favoriteProfiles: [Profile2] {
        profiles.filter { $0.isFavorite }
    }
    var body: some View {
        VStack {
            Text("Favorites")
            Text("\(favoriteProfiles.count)")
            if favoriteProfiles.count > 100 {
                Text("ENEMMISTÖPUOLUE!!!")
            }
        }
    }
}
