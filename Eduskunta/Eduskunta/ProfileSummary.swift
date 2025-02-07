//
//  ProfileSummary.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("\(profile.firstname) \(profile.lastname)")
                    .bold()
                    .font(.title)
                AsyncImage(url: URL(string: "\(profile.getImageUrl())"), scale: 2.2)
                Text("Id: \(profile.hetekaId)")
                Text("Seat number: \(profile.seatNumber)")
                Text("Party: \(profile.party)")
                Text("Minister: \(profile.minister)")
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile(hetekaId: 1306, seatNumber: 123456, lastname: "Adlercreutz", firstname: "Anders", party: "ps", minister: false))
}
