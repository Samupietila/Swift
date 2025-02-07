//
//  ProfileHost.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct ProfileHost: View {
    var profile: Profile
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "\(profile.getImageUrl())"), scale: 15)
                .frame(width:50,height:50)
                .cornerRadius(10)
            Text("\(profile.firstname) \(profile.lastname)")
                .font(.title)
        }
    }
}

#Preview {
    ProfileHost(profile: Profile(hetekaId: 1306, seatNumber: 123456, lastname: "Adlercreutz", firstname: "Anders", party: "ps", minister: false))
}
