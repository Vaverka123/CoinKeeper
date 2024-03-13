//
//  BalanceView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 13/03/2024.
//

import SwiftUI

struct BalanceView: View {
    
    @ObservedObject var transactionStore: TransactionStore
 
    var body: some View {
        List(transactionStore.transactions) { transaction in
            HStack() {
                    Text(transaction.date, style: .date)
                    Text(transaction.category)
                    Text(transaction.amount)
            }
        }
    }
}

#Preview {
    BalanceView(transactionStore: TransactionStore())
}
