//
//  VaalipiiriProfile.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import Foundation

struct VaalipiiriProfile: Codable, Identifiable, Hashable {
    var id: Int {hetekaId}
    var hetekaId: Int
    var name: String
    var constituency: String
    
    init(hetekaId: Int, name: String, constituency: String) {
        self.hetekaId = hetekaId
        self.name = name
        self.constituency = constituency
    }

}
