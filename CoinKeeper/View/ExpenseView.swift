//
//  ExpenseView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI
import Combine

struct ExpenseView: View {
    
    @State private var descriptionInput = ""
    @State private var selectedCategory = ""
    
    var body: some View {
        NavigationView{
            List {
                //Date, select date in calendar, select time on clock
                
                // Amount, input double or navigate to calculator
                
                // Description, optional input string
                VStack(alignment: .leading) {
                    Text("Description:")
                    TextField("Give some details", text: $descriptionInput)
                }
                // Category, choose category
                
                NavigationLink(
                    destination: ExpenseCategoryView(selectedCategory: $selectedCategory)) {
                            Text("Category: \(selectedCategory)")
                        }
                

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
