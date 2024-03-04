//
//  ExpenseView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

struct ExpenseView: View {
    var body: some View {
        NavigationStack{
            List {
                //Date, select date in calendar, select time on clock
                
                // Amount, input double or navigate to calculator
                
                // Description, optional input string
                
                // Category, choose category
                
                NavigationLink(destination: ExpenseCategoryView()) { Text("Category") }
                
               
            }
            .navigationTitle("Add expense")
            .navigationBarTitleDisplayMode(.large)
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
    ExpenseView()
}
