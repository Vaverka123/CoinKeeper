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
 
    var body: some View {
        NavigationView {
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
            .navigationTitle("Report")
            .navigationBarTitleDisplayMode(.inline)
            //add button to go to settings view
        }
    }
    private var groupedTransactions: [String: [Transaction]] {
            Dictionary(grouping: transactionStore.transactions) { transaction in
                "\(transaction.year)/\(transaction.month)/\(transaction.day)"
            }
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
}

#Preview {
    BalanceView(transactionStore: TransactionStore())
}
