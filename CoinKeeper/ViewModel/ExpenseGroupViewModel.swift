//
//  ExpenseGroupModel.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 05/03/2024.
//

import SwiftUI
import Combine

struct ExpenseGroupViewModel: View {
    
    @Binding var selectedCategory: String
    let callback: (String) -> ()
    @State var selectedId: String = ""

    var body: some View {
        VStack {
            ForEach(ExpenseCategoryModel.allCases, id: \.self.rawValue) { category in
            radioButton(for: category)
                    }
                }
            }

            func radioButton(for category: ExpenseCategoryModel) -> some View {
        
                HStack {
                    Image(systemName: category.systemImageName)

                    RadioButtonField(
                        id: category.rawValue,
                        label: category.rawValue,
                        isMarked: selectedCategory == category.rawValue,
                        callback: radioGroupCallback)
                }
            }

func radioGroupCallback(id: String) {
    selectedId = id
    selectedCategory = id
    callback(id)
    }
}


