//
//  IncomeCategoryView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

struct IncomeCategoryView: View {
        
    @Binding var selectedCategory: String
      
    var body: some View {
            
        VStack {
            CategoryGroupVM(
                selectedCategory: $selectedCategory,
                callback: { selected in
                    print ("Selected income category is: \(selected)"
                        )},
                categories: IncomeCategoryModel.allCases.map { $0.rawValue },
                systemImageNames: IncomeCategoryModel.allCases.map {
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
