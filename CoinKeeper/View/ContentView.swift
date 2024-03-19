//
//  ContentView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            BalanceView(transactionStore: transactionStore)
                .tabItem {
                    Label("Balance", systemImage: "wallet.pass")
                }
                .tag(0)

            TransactionView(transactionStore: transactionStore)
                .tabItem {
                    Label("Transaction", systemImage: "plus.circle")
                }
                .tag(1)
       }
    }
}

#Preview {
    ContentView()
}
