//
//  IncomeCategoryView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI
import Combine

struct IncomeCategoryView: View {
        
    @Binding var selectedCategory: String
      
    var body: some View {
            
        VStack {
                
            CategoryGroupViewModel(
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
    IncomeCategoryView(selectedCategory: .constant("Salary"))
}
