//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 15/10/2024.
//

import SwiftUI
import FirebaseFirestore

struct ToDoListItemsView: View {
    @StateObject var viewModel = ToDoListItemsViewViewModel()
    
    let item: ToDoListItems
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color(.secondaryLabel))
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(Color.blue)
            }

        }
    }
}

#Preview {
    ToDoListItemsView(item: .init(id: "123", title: "Get Milk", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
