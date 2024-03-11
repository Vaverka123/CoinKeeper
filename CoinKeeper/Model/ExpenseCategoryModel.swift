//
//  ExpenseGroup.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

enum ExpenseCategoryModel: String, CaseIterable {
    
    case shopping = "Shopping"
    case bills = "Bills"
    case gifts = "Gifts"
    case education = "Education"
    case travel = "Travel"
    case health = "Health"
    case entertainment = "Entertainment"
    case cafe = "Cafe"
    
    var systemImageName: String {
        switch self {
        case .bills: return "lightbulb.max.fill"
        case .gifts: return "gift"
        case .education: return "book"
        case .travel: return "airplane"
        case .health: return "cross.case.circle.fill"
        case .entertainment: return  "theatermasks"
        case .cafe: return "fork.knife.circle"
        case .shopping: return "cart"
        }
    }
}
