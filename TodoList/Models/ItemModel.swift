//
//  File.swift
//  TodoList
//
//  Created by Lpl on 20/3/2023.
//

import Foundation

struct ItemModel: Identifiable {
    
    let id: String
    let title: String
    let status: Bool
    
    
    init(id: String = UUID().uuidString, title: String, status: Bool){
        self.id = id
        self.title = title
        self.status = status
    }
    
    
    func uponCompletion() -> ItemModel {
        return ItemModel(id: id, title: title, status: !status)
    }
}

