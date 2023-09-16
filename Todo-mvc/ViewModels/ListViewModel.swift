//
//  ListViewModel.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 10/9/23.
//

import Foundation

class ListViewModel :ObservableObject {
    @Published var items: [ItemModel] = []
    
    init(){
        getItems()
    }
    
    func getItems(){
        let newItems = [
            ItemModel(title: "First Item", isCompleted: false),
            ItemModel(title: "Second Item", isCompleted: false),
            ItemModel(title: "Third Item", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(indexSet: IndexSet, itemId: Int){
        items.move(fromOffsets: indexSet, toOffset: itemId)
    }
    
    func addItem(title: String){
        let newItem: ItemModel = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
}
