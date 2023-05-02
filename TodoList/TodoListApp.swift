//
//  TodoListApp.swift
//  TodoList
//
//  Created by Lpl on 20/3/2023.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject var itemViewModel: ItemViewModel = ItemViewModel()
    
    var body: some Scene {
        
        WindowGroup {
            NavigationView {
                ListView()
            }
            .environmentObject(itemViewModel)
        }
    }
}
