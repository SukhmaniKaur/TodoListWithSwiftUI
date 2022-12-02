//
//  ItemModel.swift
//  TodoList
//
//  Created by Sukhmani Kaur on 02/12/22.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
