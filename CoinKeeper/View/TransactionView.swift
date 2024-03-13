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
    
    @ObservedObject var transactionStore: TransactionStore

    
    var body: some View {
        NavigationView {
            List {
                DateView(date: $date)
                AmountView(amount: $amount)
                NavigationLink (
                    destination: SelectCategoryView(selectedCategory: $selectedCategory)) {
                        Text("Category: \(selectedCategory)")
                    }
                DescriptionView(descriptionInput: $descriptionInput)
            }
            .navigationTitle("Add transaction")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    Button(action: {
                        let newTransaction = Transaction(id: UUID(), date: date, amount: amount, category: selectedCategory, description: descriptionInput)
                        print(newTransaction)
                            transactionStore.transactions.append(newTransaction)
                        print(transactionStore.transactions)
                        date = .now
                        amount = ""
                        selectedCategory = ""
                        descriptionInput = ""
                    }) {
                        Text("Save")
                    }
                }
            }
        }
    }
}
    
let transactionStore = TransactionStore()


#Preview {
    TransactionView(transactionStore: TransactionStore())
    }


