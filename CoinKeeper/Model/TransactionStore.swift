//
//  TransactionStore.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 13/03/2024.
//

import SwiftUI

class TransactionStore: ObservableObject {
    @Published var transactions: [Transaction] = []
    
}
