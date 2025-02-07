//
//  PartyRow.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct PartyRow: View {
    var profile: Profile
    var body: some View {
        HStack {
            Text("\(profile.party)")
                .font(.title)
        }
    }
}

#Preview {
    ProfileHost(profile: Profile(hetekaId: 1306, seatNumber: 123456, lastname: "Adlercreutz", firstname: "Anders", party: "ps", minister: false))
}

