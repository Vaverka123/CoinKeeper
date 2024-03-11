//
//  ExpenseGroupModel.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 05/03/2024.
//

import SwiftUI


struct CategoryGroupViewModel: View {
    
    @Binding var selectedCategory: String
    let callback: (String) -> ()
    @State var selectedId: String = ""
    let categories: [String]
    let systemImageNames: [String]

    var body: some View {
        VStack {
            ForEach(0..<categories.count, id: \.self) { index in
                           radioButton(for: index)
                    }
                }
            }

            func radioButton(for index: Int) -> some View {
        
                HStack {
                    Image(systemName: systemImageNames[index])

                    RadioButtonField(
                        id: categories[index],
                        label: categories[index],
                        isMarked: selectedCategory == categories[index],
                        callback: radioGroupCallback
                    )
                }
            }

func radioGroupCallback(id: String) {
    selectedId = id
    selectedCategory = id
    callback(id)
    }
}


