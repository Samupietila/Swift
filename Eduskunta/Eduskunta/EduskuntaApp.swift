//
//  EduskuntaApp.swift
//  Eduskunta
//
//  Created by Samu Pietilä on 7.2.2025.
//

import SwiftUI

@main
struct EduskuntaApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            Partylist()
                .environment(modelData)
        }
    }
}
