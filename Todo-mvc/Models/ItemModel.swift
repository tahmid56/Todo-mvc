//
//  ItemModel.swift
//  Todo-mvc
//
//  Created by Tahmid Akter on 9/9/23.
//

import Foundation

struct ItemModel :Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
