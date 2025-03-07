//
//  PartyRow.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct PartyRow: View {
    var partyMembers: [Profile2]
    var party: String
    var isAllFavorites: Bool {
        partyMembers.allSatisfy(\.isFavorite)
    }
    var body: some View {
        HStack {
            Text("\(party)")
                .font(.title)
            Spacer()
            Button(action: {
                if !isAllFavorites {
                    for member in partyMembers {
                        if !member.isFavorite {
                            member.toggleFavorite()
                        }
                       
                    }
                } else {
                    for member in partyMembers {
                        if member.isFavorite {
                            member.toggleFavorite()
                        }
                    }
                }
            }){
                Image(systemName: isAllFavorites ? "star.fill" : "star")
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}



