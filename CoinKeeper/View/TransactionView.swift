//
//  TransactionView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 11/03/2024.
//

import SwiftUI
import Combine

struct TransactionView: View {
    
    @State private var selectedCategory = ""
    @State private var date = Date()
    @State private var amount = ""
    @State private var descriptionInput = ""
    
    @State private var isUnchanged = true
    
    @ObservedObject var transactionStore: TransactionStore

    
    var body: some View {
        NavigationView {
            List {
                DateView(date: $date)

                AmountView(amount: $amount)
                    .onChange(of: amount) { amount, _ in
                                           updateIsUnchanged()
                                       }
                NavigationLink (
                    destination: SelectCategoryView(selectedCategory: $selectedCategory)) {
                        Text("Category: \(selectedCategory)")
                    }
                    .onChange(of: selectedCategory) { selectedCategory, _ in
                                       updateIsUnchanged()
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
                    .disabled(isUnchanged)
                }
            }
        }
    }
    private func updateIsUnchanged() {
        isUnchanged = amount.isEmpty || selectedCategory.isEmpty
       }
}
    
let transactionStore = TransactionStore()


#Preview {
    TransactionView(transactionStore: TransactionStore())
    }


