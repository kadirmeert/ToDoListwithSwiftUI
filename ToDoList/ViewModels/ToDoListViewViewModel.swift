//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 15/10/2024.
//

import Foundation
import FirebaseFirestore

/// ViewModel for list of items view
/// Primary tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    /// Delete to do list item
    /// - Parameter id: item id  to delete 
    func delete(id: String) {
        let dataBase = Firestore.firestore()
        
        dataBase.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
