//
//  AddView.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import SwiftUI

struct AddView: View {
    @Environment(\.dismiss) private var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type Something Here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                Button(action: saveBtnPressed, label: {
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })

            }.padding(14)
                
        }.navigationTitle("Add an Item 🖊️")
    }
    
    func saveBtnPressed(){
        listViewModel.addItem(title: textFieldText)
        dismiss()
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
