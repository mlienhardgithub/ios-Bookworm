//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Martin Lienhard on 6/27/24.
//

import SwiftData
import SwiftUI

@main
struct BookwormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        //.modelContainer(for: Student.self)
        .modelContainer(for: Book.self)
    }
}
