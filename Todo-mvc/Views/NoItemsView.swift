//
//  NoItemsView.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 25/9/23.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 10){
                Text("There are no items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a profuctive person? I think you should click the add button and add a bunch of items to your todo list")
                NavigationLink(destination: AddView()) {
                    Text("Add Something!")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }.multilineTextAlignment(.center)
                    .padding(40)
            }
        }
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NoItemsView()
    }
}
