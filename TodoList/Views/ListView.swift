//
//  ContentView.swift
//  TodoList
//
//  Created by Lpl on 20/3/2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var itemViewModel: ItemViewModel
    
    var body: some View {
        List {
            ForEach(itemViewModel.items) { item in
                RowView(item: item)
                    .onTapGesture {
                        withAnimation {
                            itemViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: itemViewModel.deleteItem)
            .onMove(perform: itemViewModel.moveItem)
        }
        .navigationTitle("Todo List")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    
                } label: {
                    NavigationLink("Add") {
                        AddView()
                    }
                }
            }
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
        .environmentObject(ItemViewModel())
    }
}
