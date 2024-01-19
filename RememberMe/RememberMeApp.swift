//
//  RememberMeApp.swift
//  RememberMe
//
//  Created by Sifiso Dhlamini on 2024/1/19.
//

import SwiftData
import SwiftUI

@main
struct RememberMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
