//
//  ConstituencyRow.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import SwiftUI

struct ConstituencyRow: View {
    var constituency: String
    
    var body: some View {
        HStack {
            Spacer()
            Text("\(constituency)")
                .font(.title)
            Spacer()
        }
    }
}


