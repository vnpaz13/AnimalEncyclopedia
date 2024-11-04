//
//  AnimalKRApp.swift
//  AnimalKR
//
//  Created by VnPaz on 5/6/24.
//

import SwiftUI

@main
struct AnimalKRApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
           SplashView()
        }
    }
}
