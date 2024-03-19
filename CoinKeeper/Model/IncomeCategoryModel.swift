//
//  IncomeCategoryModel.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 11/03/2024.
//

import SwiftUI

enum IncomeCategoryModel: String, CaseIterable {
    
    case salary = "Salary"
    case freelance = "Freelance"
    case rental = "Rental Income"
    case business = "Business Income"
    case royalties = "Royalties"
    
    var systemImageName: String {
        switch self {
        case .salary: return "dollarsign.circle"
        case .freelance: return "briefcase"
        case .rental: return "building.2"
        case .business: return "briefcase.fill"
        case .royalties: return "star.fill"
        }
    }
}
