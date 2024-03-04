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
            ExpenseView()
                .tabItem {
                    Label("New purchase", systemImage: "cart.fill.badge.plus")
                }
            IncomeView()
                .tabItem {
                    Label("Income", systemImage: "banknote.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
