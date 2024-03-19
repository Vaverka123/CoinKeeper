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
            List(transactionStore.transactions) { transaction in
                HStack() {
                    Text(transaction.date, style: .date)
                    Text(transaction.category)
                    Spacer()
                    Text(transaction.amount)
                }
            }
            .navigationTitle("Report")
            .navigationBarTitleDisplayMode(.inline)
            //add button to go to settings view
        }
    }
}

#Preview {
    BalanceView(transactionStore: TransactionStore())
}
