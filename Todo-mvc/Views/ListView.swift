//
//  ListView.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "This is the first title",
        "This is the second title",
        "This is the third title",
    ]
    var body: some View {
        List{
            ForEach(items, id: \.self){ item in
                ListRowView(title: item)
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


