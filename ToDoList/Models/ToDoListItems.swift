//
//  ToDoListItems.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 15/10/2024.
//

import Foundation

struct ToDoListItems: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
