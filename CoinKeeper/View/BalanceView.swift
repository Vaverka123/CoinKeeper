//
//  BalanceView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 13/03/2024.
//

import SwiftUI
import Combine

struct BalanceView: View {
    
    @ObservedObject var transactionStore: TransactionStore
    @State private var selectedCategory: String = ""
 
    var body: some View {
        
        let surplus = calculateSurplus()
        
        NavigationView {
            VStack {
                Text("Surplus: \(surplus, specifier: "%.2f")")
                                         .font(.headline)
                                         .multilineTextAlignment(.leading)
                                         .padding()
                
                List {
                    ForEach(groupedTransactions.keys.sorted().reversed(), id: \.self) { key in
                        Section(header: Text(formatDateSection(key))) {
                            ForEach(groupedTransactions[key]!.sorted(by: { $0.date > $1.date })) { transaction in
                                HStack() {
                                    Text(transaction.category)
                                    Spacer()
                                    Text(transaction.amount)
                                }
                            }
                        }
                    }
                }
            }
            .navigationTitle("Report")
            .navigationBarTitleDisplayMode(.inline)
            //add button to go to settings view
        }
    }

    
    
    
    private var groupedTransactions: [String: [Transaction]] {
        var groupedTransactions = Dictionary(grouping: transactionStore.transactions) { transaction in
            "\(transaction.year)/\(transaction.month)/\(transaction.day)"
        }
        
        for key in groupedTransactions.keys {
            groupedTransactions[key]?.sort(by: { $0.date > $1.date })
        }
        
        return groupedTransactions
    }
    
    
    private func formatDateSection(_ dateString: String) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy/M/d"
            if let date = dateFormatter.date(from: dateString) {
                dateFormatter.dateStyle = .long
                return dateFormatter.string(from: date)
            }
            return dateString
        }
    
    private func calculateSurplus() -> Double {
            var surplus: Double = 0
            
            for transaction in transactionStore.transactions {
                if IncomeCategoryModel(rawValue: transaction.category) != nil  {
                    surplus += Double(transaction.amount) ?? 0
                } else if ExpenseCategoryModel(rawValue: transaction.category) != nil {
                    surplus -= Double(transaction.amount) ?? 0
                }
            }
            return surplus
        }
}

#Preview {
    BalanceView(transactionStore: TransactionStore())
}
