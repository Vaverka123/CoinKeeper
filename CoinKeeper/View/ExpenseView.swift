//
//  ExpenseView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI
import Combine

struct ExpenseView: View {
    
    @State private var date = Date()
    @State private var amount = ""
    @State private var selectedCategory = ""
    @State private var descriptionInput = ""
    
    var body: some View {
        NavigationView{
            List {
                //Date, select date in calendar, select time on clock
               DateView(date: $date)
                  
                // Amount, input double or navigate to calculator
                
                AmountView(amount: $amount)
                
               
                // Category, choose category
                
                NavigationLink(
                    destination: ExpenseCategoryView(selectedCategory: $selectedCategory)) {
                            Text("Category: \(selectedCategory)")
                    } 
                // Description, optional input string
                               
                               DescriptionView(descriptionInput: $descriptionInput)
                           
        

            }
            .navigationTitle("Add expense")
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
        ExpenseView()
    }}
