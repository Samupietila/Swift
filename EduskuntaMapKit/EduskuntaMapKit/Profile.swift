//
//  Profile.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import Foundation
import SwiftData

struct Profile: Codable, Identifiable, Hashable {
    var id: Int {hetekaId}
    var hetekaId: Int
    var seatNumber: Int
    var lastname: String
    var firstname: String
    var party: String
    var minister: Bool
    var pictureUrl: String
    var isFavorite: Bool? = false
    
    init(hetekaId: Int, seatNumber: Int, lastname: String, firstname: String, party: String, minister: Bool, pictureUrl: String) {
        self.hetekaId = hetekaId
        self.seatNumber = seatNumber
        self.lastname = lastname
        self.firstname = firstname
        self.party = party
        self.minister = minister
        self.pictureUrl = pictureUrl
        

    }
    func getImageUrl() -> String {
        let newUrl = pictureUrl.replacingOccurrences(of: "attachment/member/pictures/", with: "https://users.metropolia.fi/~peterh/edustajakuvat/")
        return newUrl
    }
}

@Model
class Profile2 {    
    var id: Int {hetekaId}
    var hetekaId: Int
    var seatNumber: Int
    var lastname: String
    var firstname: String
    var party: String
    var minister: Bool
    var pictureUrl: String
    var constituency: String
    var isFavorite: Bool = false
    
    init(hetekaId: Int, seatNumber: Int, lastname: String, firstname: String, party: String, minister: Bool, pictureUrl: String, constituency: String) {
        self.hetekaId = hetekaId
        self.seatNumber = seatNumber
        self.lastname = lastname
        self.firstname = firstname
        self.party = party
        self.minister = minister
        self.pictureUrl = pictureUrl
        self.constituency = constituency

    }
    func getImageUrl() -> String {
        let newUrl = pictureUrl.replacingOccurrences(of: "attachment/member/pictures/", with: "https://users.metropolia.fi/~peterh/edustajakuvat/")
        return newUrl
    }
    func toggleFavorite() {
        isFavorite.toggle()

    }
    
}
