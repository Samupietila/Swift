//
//  ProfileList.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

struct ProfileList: View {
    var partyMembers: [Profile]
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(partyMembers) { edustaja in
                    NavigationLink {
                        ProfileSummary(profile: edustaja)
                    } label: {
                        ProfileHost(profile: edustaja)
                    }
                }
            }
            
        }
    }
}


