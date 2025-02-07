//
//  Profile.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import Foundation
struct Profile: Identifiable, Codable{
    var id: Int {hetekaId}
    var hetekaId: Int
    var seatNumber: Int
    var lastname: String
    var firstname: String
    var party: String
    var minister: Bool
    var pictureUrl: String
    
    init(hetekaId: Int, seatNumber: Int, lastname: String, firstname: String, party: String, minister: Bool) {
        self.hetekaId = hetekaId
        self.seatNumber = seatNumber
        self.lastname = lastname
        self.firstname = firstname
        self.party = party
        self.minister = minister
        self.pictureUrl = ""
        print(self.pictureUrl)
        

    }
    func getImageUrl() -> String {
        let newUrl = pictureUrl.replacingOccurrences(of: "attachment/member/pictures/", with: "https://users.metropolia.fi/~peterh/edustajakuvat/")
        return newUrl
    }
}
