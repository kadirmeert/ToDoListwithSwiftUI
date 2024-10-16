//
//  CustomButton.swift
//  ToDoList
//
//  Created by Kadir Yildiz on 16/10/2024.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            // Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundStyle(backgroundColor)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
}

#Preview {
    CustomButton(title: "Value", backgroundColor: .pink, action: {
        
    })
}
