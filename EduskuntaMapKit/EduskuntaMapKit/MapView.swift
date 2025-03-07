//
//  MapView.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import SwiftUI
import SwiftData

struct MapView: View {
    @Query private var profiles: [Profile2]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        let array = Array(Set(profiles.map { $0.constituency }))
        NavigationView {
            List {
                ForEach((array), id: \.self) {constituency in
                    let constituencies = Array(profiles.filter { $0.constituency == constituency })
                    NavigationLink {
                        ProfileList(partyMembers: constituencies, constituency: constituency)
                    } label: {
                        ConstituencyRow(constituency: constituency)
                    }
                }
            }
        }
        .task {
            await EduskuntaData().updateMPsFromNW(context: context)
        }
    }
}

