//
//  YlialiPeliUIApp.swift
//  YlialiPeliUI
//
//  Created by Samu Pietilä on 31.1.2025.
//

import SwiftUI

@main
struct YlialiPeliUIApp: App {
    @State private var yap = YliAli(low: 1, high: 10)
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
