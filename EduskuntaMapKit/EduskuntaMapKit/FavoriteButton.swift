//
//  FavoriteButton.swift
//  EDUSUKUNTA IS SAVED
//
//  Created by Samu Pietilä on 28.2.2025.
//

import Foundation
import SwiftUI

struct FavoriteButton: View {
    @Binding var isFavorite: Bool
    
    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isFavorite ? "star.fill" : "star")
                .labelStyle(.iconOnly)
        }
    }
}
