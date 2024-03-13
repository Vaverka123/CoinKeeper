//
//  ExpenseCategoryView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//


import SwiftUI
import Combine


struct ExpenseCategoryView: View {
    
    @Binding var selectedCategory: String
  
    var body: some View {
        VStack {
            CategoryGroupVM(
                selectedCategory: $selectedCategory,
                callback: { selected in
                    print ("Selected expense category is: \(selected)"
                    )},
                categories: ExpenseCategoryModel.allCases.map { $0.rawValue },
                systemImageNames: ExpenseCategoryModel.allCases.map {
                    $0.systemImageName
                }
            )
        }.padding(20)
        .navigationTitle("Select category")
                       
        Spacer()
    }
}

#Preview {
    ExpenseCategoryView(selectedCategory: .constant("Shopping"))
}
