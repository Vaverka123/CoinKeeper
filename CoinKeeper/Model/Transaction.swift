//
//  Transaction.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 13/03/2024.
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID
    let date: Date
    let day: Int
    let month: Int
    let year: Int
    let amount: String
    let category: String
    let description: String
    
    init(id: UUID = UUID(), date: Date, amount: String, category: String, description: String) {
        self.id = id
        self.date = date
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: date)
        self.day = components.day ?? 0
        self.month = components.month ?? 0
        self.year = components.year ?? 0
        self.amount = amount
        self.category = category
        self.description = description
    }
}
