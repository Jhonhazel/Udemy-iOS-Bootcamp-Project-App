//
//  I_Am_Rich_SwiftUIApp.swift
//  I Am Rich SwiftUI
//
//  Created by Jhonhazel Lionel Tjokahn on 21/02/25.
//

import SwiftUI

@main
struct I_Am_Rich_SwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
