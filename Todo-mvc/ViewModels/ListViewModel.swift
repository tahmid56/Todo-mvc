//
//  ListViewModel.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 10/9/23.
//

import Foundation

class ListViewModel :ObservableObject {
    @Published var items: [ItemModel] = []{
        didSet{
            saveItems()
        }
    }
    let itemsKey: String = "items_list"
    init(){
        getItems()
    }
    
    func getItems(){
//        let newItems = [
//            ItemModel(title: "First Item", isCompleted: false),
//            ItemModel(title: "Second Item", isCompleted: false),
//            ItemModel(title: "Third Item", isCompleted: false),
//        ]
//        items.append(contentsOf: newItems)
        guard
            let data = UserDefaults.standard.data(forKey: itemsKey),
            let savedData = try? JSONDecoder().decode([ItemModel].self, from: data)
        else {return}
        
        self.items = savedData
    }
    
    func deleteItem(indexSet: IndexSet){
        items.remove(atOffsets: indexSet)
        saveItems()
    }
    
    func moveItem(indexSet: IndexSet, itemId: Int){
        items.move(fromOffsets: indexSet, toOffset: itemId)
        saveItems()
    }
    
    func addItem(title: String){
        let newItem: ItemModel = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
        saveItems()
    }
    
    func updateItem(item: ItemModel){
        if let index = items.firstIndex(where: {$0.id == item.id}){
            items[index] = item.updateComplete()
        }
        saveItems()
    }
    
    func saveItems(){
        if let encodedData = try? JSONEncoder().encode(items) {
            UserDefaults.standard.set(encodedData, forKey: "items_list")
        }
    }
}
