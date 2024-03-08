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
            ExpenseGroupViewModel(selectedCategory: $selectedCategory) { selected in
                print ("Selected expense category is: \(selected)")
            }
        }.padding(20)
        .navigationTitle("Select category")
                       
        Spacer()
    }
}

#Preview {
    ExpenseCategoryView(selectedCategory: .constant("Shopping"))
}
