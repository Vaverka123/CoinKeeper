//
//  Transaction.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 13/03/2024.
//

import SwiftUI

struct Transaction: Identifiable {
    var id: UUID
    var date: Date
    var amount: String
    var category: String
    var description: String
}
