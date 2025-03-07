//
//  ProfileSummary.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(\.modelContext) private var context
    var profile: Profile2
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("\(profile.firstname) \(profile.lastname)")
                    .bold()
                    .font(.title)
                AsyncImage(url: URL(string: "\(profile.getImageUrl())"), scale: 2.2)
                Button(action: {
                    profile.toggleFavorite()
                    do {
                        try context.save()
                        print("Saved")
                    } catch {
                        print(error)
                    }
                }) {
                    Image(systemName: profile.isFavorite ? "star.fill" : "star")
                        
                }
                Text("Id: \(profile.hetekaId)")
                Text("Seat number: \(profile.seatNumber)")
                Text("Party: \(profile.party)")
                Text("Minister: \(profile.minister)")
                Text("Constituency: \(profile.constituency)")
            }
        }
    }
}


