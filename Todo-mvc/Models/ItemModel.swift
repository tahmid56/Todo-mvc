//
//  ItemModel.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import Foundation

struct ItemModel :Identifiable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateComplete() -> ItemModel{
        return ItemModel(id: id,title: title, isCompleted: !isCompleted)
    }
}
