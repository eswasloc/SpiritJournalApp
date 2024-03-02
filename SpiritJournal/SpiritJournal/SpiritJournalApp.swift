//
//  SpiritJournalApp.swift
//  SpiritJournal
//
//  Created by Jinna Cha on 2024/02/28.
//

import SwiftUI

@main
struct SpiritJournalApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
