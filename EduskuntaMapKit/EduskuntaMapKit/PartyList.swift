//
//  Partylist.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI
import SwiftData

struct Partylist: View {
    @Query(
        //sort: \Profile2.party,
        animation: Animation.easeInOut(duration: 0.25)
        ) private var profiles: [Profile2]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        let array = Array(Set(profiles.map { $0.party }))
        Favorites(profiles: profiles)
        NavigationSplitView {
            List {
                ForEach((array), id: \.self) {party in
                    let partyMembers = Array(profiles.filter { $0.party == party })
                    NavigationLink {
                        ProfileList(partyMembers: partyMembers, constituency: "")
                    } label: {
                        PartyRow(partyMembers: partyMembers, party: party)
                    }
                }
            }
        } detail: {
            Text("kukkuu")
        }
        /*.task {
         //if profiles.isEmpty {
         await EduskuntaData().updateMPsFromNW(context: context)
         */
        }
        
    }


#Preview {
    Partylist()
}

