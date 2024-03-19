//
//  AmountView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 08/03/2024.
//

import SwiftUI
import Combine


struct AmountView: View {
    
    @Binding var amount: String
    let amountLineLimit = 11

    var body: some View {
        VStack(alignment: .leading) {
            Text("Amount: ")
            TextField("Enter amount", text: $amount)
                .textFieldStyle(.roundedBorder)
                .padding()
                .keyboardType(.decimalPad)
                .onChange(of: amount) { amount, newValue in
                    
                let allowedCharacters = "0123456789,"
                let filtered = newValue.filter { allowedCharacters.contains($0) }
                   
                    if filtered != newValue {
                        self.amount = filtered
                    } 
                    else if newValue.hasPrefix("0") {
                        self.amount = String(newValue.dropFirst())
                        }
                    else if newValue.filter({ $0 == "," }).count > 1 {
                        let commaIndex = newValue.lastIndex(of: ",")
                        self.amount = String(newValue[..<commaIndex!]) + String(newValue[newValue.index(after: commaIndex!)...])
                            }
                    else if let commaIndex = newValue.lastIndex(of: ",") {
                        let decimalPart = String(newValue[newValue.index(after: commaIndex)...])
                        if decimalPart.count > 2 {
                                self.amount = String(newValue[..<newValue.index(commaIndex, offsetBy: 3)])
                            }
                        }
                    
                limitAmount(amountLineLimit)
            }
        }
    }
    
    func limitAmount(_ upper: Int) {
           if amount.count > upper {
               amount = String(amount.prefix(upper))
           }
       }
}

#Preview {
    AmountView(amount: .constant("0"))
}
