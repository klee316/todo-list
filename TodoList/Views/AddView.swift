//
//  AddView.swift
//  TodoList
//
//  Created by Lpl on 20/3/2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var itemViewModel: ItemViewModel
    @State var title: String = ""
    
    var body: some View {
        VStack {
            TextField("type something...", text: $title)
                .padding()
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray.opacity(0.3))
                }
            
            Button {
                itemViewModel.addItem(title: title, status: false)
                presentationMode.wrappedValue.dismiss()
            } label: {
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(title.count > 0 ? .blue : .gray)
                    .overlay {
                        Text("SAVE")
                            .foregroundColor(.white)
                    }
            }
            .disabled(title.count < 1)
            
            Spacer()
        }
        .padding()
        .navigationTitle("Add Item")
    }
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ItemViewModel())
    }
}
