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
            ExpenseView()
                .tabItem {
                    Label("New purchase", systemImage: "cart.fill.badge.plus")
                }
                .tag(2)
            IncomeView()
                .tabItem {
                    Label("Income", systemImage: "banknote.fill")
                }
                .tag(3)
        }
    }
}

#Preview {
    ContentView()
}
