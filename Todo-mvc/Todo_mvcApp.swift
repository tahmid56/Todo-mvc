//
//  Todo_mvcApp.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import SwiftUI

@main
struct Todo_mvcApp: App {
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(listViewModel)
            
        }
    }
}
