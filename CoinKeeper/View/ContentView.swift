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
            BalanceView()
                .tabItem {
                    Label("Balance", systemImage: "wallet.pass")
                }
                .tag(1)

            TransactionView()
                .tabItem {
                    Label("Transaction", systemImage: "plus.circle")
                }
                .tag(2)
       }
    }
}

#Preview {
    ContentView()
}
