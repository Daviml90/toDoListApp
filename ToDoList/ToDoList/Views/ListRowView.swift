//
//  ListRowView.swift
//  ToDoList
//
//  Created by Davi Martinelli de Lira on 4/6/24.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundStyle(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(item: ItemModel(title: "First Item", isCompleted: false))
}
