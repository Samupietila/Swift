//
//  LaskuriAssignmentApp.swift
//  LaskuriAssignment
//
//  Created by Peter Hjort työ on 23.1.2025.
//

import SwiftUI

@main
struct LaskuriAssignmentApp: App {
    @State private var counter = Counter()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(counter)
        }
    }
}
