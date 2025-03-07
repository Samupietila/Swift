//
//  ProfileList.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI
import MapKit

struct ProfileList: View {
    var partyMembers: [Profile2]
    var constituency: String
    
    var body: some View {
        VStack{
            Coordinates(constituency: constituency)
            
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
}

