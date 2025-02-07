//
//  Partylist.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct Partylist: View {
    @Environment(ModelData.self) var modelData
    
    var body: some View {
        NavigationSplitView {
            List {
                ForEach(Array(Set(modelData.eduskunta.map { $0.party})), id: \.self) {party in
                    let partyMembers = modelData.eduskunta.filter { $0.party == party }
                    NavigationLink {
                        ProfileList(partyMembers: partyMembers)
                    } label: {
                        PartyRow(profile: partyMembers.first!)
                    }
                }
            }
        } detail: {
            Text("kukkuu")
        }
    }
}

#Preview {
    Partylist()
}
