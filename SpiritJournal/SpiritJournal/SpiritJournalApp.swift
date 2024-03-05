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
                .environmentObject(SpiritList()) //SpiritList 인스턴트 환경 객체로추가
        }
    }
}
