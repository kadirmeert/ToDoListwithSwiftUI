//
//  ToDoListItemsViewViewModel.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 15/10/2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore


/// ViewModel for single to do list item view 
/// Primary tab
class ToDoListItemsViewViewModel: ObservableObject {
    
    init() {}
    
    func toggleIsDone(item: ToDoListItems) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let dataBase = Firestore.firestore()
        dataBase.collection("users")
            .document(userId)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
        
    }
}
