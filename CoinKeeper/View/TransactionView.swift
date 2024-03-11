//
//  TransactionView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 11/03/2024.
//

import SwiftUI

struct TransactionView: View {
    
    @State private var selectedCategory = ""
    @State private var date = Date()
    @State private var amount = ""
    @State private var descriptionInput = ""
    
    var body: some View {
        
            NavigationView{
                List {
                    DateView(date: $date)
                    AmountView(amount: $amount)
                    NavigationLink(
                        destination: SelectCategoryView(selectedCategory: $selectedCategory)) {
                                Text("Category: \(selectedCategory)")
                        }
                    DescriptionView(descriptionInput: $descriptionInput)
 
                }
                .navigationTitle("Add transaction")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Save")
                        })
                    }
                })
            }
        }
    }


#Preview {
    NavigationView{
        TransactionView()
    }
}

