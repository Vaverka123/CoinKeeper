//
//  SelectCategoryView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 11/03/2024.
//

import SwiftUI

struct SelectCategoryView: View {
    
    @Binding var selectedCategory: String
    @State private var selectedView = 0
    
    var body: some View {
            VStack {
                Picker("Choose View", selection: $selectedView) {
                    Text("Expense").tag(0)
                    Text("Income").tag(1)
                }
               // .pickerStyle(SegmentedPickerStyle())
                .pickerStyle(SegmentedPickerStyle())
                
                if selectedView == 0 {
                    ExpenseCategoryView(selectedCategory: $selectedCategory)
                } else {
                    IncomeCategoryView(selectedCategory: $selectedCategory)
                }
            }
        }
    }

#Preview {
    SelectCategoryView(selectedCategory: .constant("Cafe"))
}
