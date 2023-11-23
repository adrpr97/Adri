//
//  adriApp.swift
//  adri
//
//  Created by Adriano Prota on 23/11/23.
//

import SwiftUI

@main
struct adriApp: App {
    var body: some Scene {
        WindowGroup {
            MainScreen()
        }
        .modelContainer(for: NoteItem.self)
    }
}
