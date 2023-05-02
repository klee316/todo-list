//
//  RowView.swift
//  TodoList
//
//  Created by Lpl on 20/3/2023.
//

import SwiftUI

struct RowView: View {
    
    var item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.status ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.status ? .green : .gray)
            Text(item.title)
            Spacer()
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            RowView(title: "eat eat eat")
//            RowView(title: "eat eat eat")
        }
        .previewLayout(.sizeThatFits)
    }
}
