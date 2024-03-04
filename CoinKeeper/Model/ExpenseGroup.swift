//
//  ExpenseGroup.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

enum ExpenseCategory: String, CaseIterable {
    
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
        case .bills: return "dollarsign.circle"
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

struct ExpenseGroup: View {
let callback: (String) -> ()

@State var selectedId: String = ""

var body: some View {
    VStack {
        ForEach(ExpenseCategory.allCases, id: \.self.rawValue) { category in
            radioButton(for: category)
        }
    }
}

    func radioButton(for category: ExpenseCategory) -> some View {
        
        HStack {
            RadioButtonField(
                id: category.rawValue,
                label: category.rawValue,
                isMarked: selectedId == category.rawValue,
                callback: radioGroupCallback
            )
            
            Image(systemName: category.systemImageName)
                                     .padding(.trailing, 8)
        }
    }

func radioGroupCallback(id: String) {
    selectedId = id
    callback(id)
}
}

