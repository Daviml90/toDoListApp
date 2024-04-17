//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Davi Martinelli de Lira on 4/17/24.
//

import Foundation

/*
 
 CRUD Functions
 
 Create
 Read
 Update
 Delete
 
 */


class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems: [ItemModel] = [
            ItemModel(title: "First item", isCompleted: false),
            ItemModel(title: "Second item", isCompleted: true),
            ItemModel(title: "Third item", isCompleted: false)
            ]
        
        items.append(contentsOf: newItems)
    }
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String) {
        items.append(ItemModel(title: title, isCompleted: false))
    }
}
