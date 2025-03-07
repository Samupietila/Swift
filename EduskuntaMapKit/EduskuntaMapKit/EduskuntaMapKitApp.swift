//
//  EDUSUKUNTA_IS_SAVEDApp.swift
//  EDUSUKUNTA IS SAVED
//
//  Created by Samu Pietilä on 28.2.2025.
//

import SwiftUI
import SwiftData

@main
struct EduskuntaMapKitApp: App {
    @Environment(\.modelContext) var context
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([Profile2.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)
        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
