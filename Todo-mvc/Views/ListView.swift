//
//  ListView.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First Item", isCompleted: false),
        ItemModel(title: "Second Item", isCompleted: false),
        ItemModel(title: "Third Item", isCompleted: false),
    ]
    var body: some View {
        List{
            ForEach(items){ item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem (placement: .navigationBarLeading){
                NavigationLink("Add", destination: AddView())
            }
            ToolbarItem (placement: .navigationBarTrailing){
                EditButton()
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        
    }
}


