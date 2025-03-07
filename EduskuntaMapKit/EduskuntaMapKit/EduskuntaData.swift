//
//  EduskuntaData.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 14.2.2025.
//

import Foundation
import SwiftData

class EduskuntaData{
    static let shared = EduskuntaData()
    func updateMPsFromNW(context: ModelContext) async {
        
        do {
            try context.delete(model: Profile2.self)
            try context.save()
        } catch {
            print("error")
        }
        
        let urlString = "https://users.metropolia.fi/~peterh/eduskunta.json"
        
        guard let url = URL(string: urlString) else {
            print("Bad URL")
            return
        }
        let firstask = VaalipiiriData().vaalipiirit
        //print(firstask.first(where: {$0.hetekaId == 1517})?.constituency ?? "ei löytynyt")
        let task = URLSession.shared.dataTask(with: url) {  data, response, error in
            if let error = error {
                print("dataTask error: \(error.localizedDescription)")
                return
            } else {
                guard let response = response else {
                    print("Bad response")
                    return
                }
                print("response: \(response.expectedContentLength)")
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let parliament = try decoder.decode([Profile].self, from: data)
                        for profile in parliament {
                            
                            let newProfile = Profile2(hetekaId: profile.id, seatNumber: profile.seatNumber, lastname: profile.lastname, firstname: profile.firstname, party: profile.party, minister: profile.minister, pictureUrl: profile.pictureUrl, constituency: firstask.first(where: {$0.id == profile.id})?.constituency ?? "Vaalipiiriä ei löytynyt")
                            context.insert(newProfile)
                        }
                        try context.save()
                    } catch {
                        fatalError("\(error)")
                    }
                }
            }
        }
        task.resume()
    
}
}
