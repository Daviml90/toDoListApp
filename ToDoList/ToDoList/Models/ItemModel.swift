//
//  ItemModel.swift
//  ToDoList
//
//  Created by Davi Martinelli de Lira on 4/6/24.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var isCompleted: Bool
}
