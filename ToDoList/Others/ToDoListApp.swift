//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 15/10/2024.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
