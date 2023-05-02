//
//  ItemViewModel.swift
//  TodoList
//
//  Created by Lpl on 21/3/2023.
//

import Foundation


class ItemViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItem()
    }
    
    func getItem() {
        
        let newItems: [ItemModel] = [
            
            ItemModel(title: "Hello world", status: false),
            ItemModel(title: "this is Kathy", status: true)
        
        ]
        
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int){
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title: String, status: Bool) {
        let newItem: ItemModel = ItemModel(title: title, status: status)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.uponCompletion()
        }
        
    }
    
}
