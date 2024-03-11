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

    var body: some View {
        VStack(alignment: .leading) {
            Text("Amount")
            TextField("Enter amount", text: $amount)
                .keyboardType(.decimalPad)
                .onReceive(Just(amount)) { newValue in
                let allowedCharacters = ",0123456789"
                let filtered = newValue.filter { allowedCharacters.contains($0) }
                    if filtered != newValue {
                        self.amount = filtered
                    }
                }
                .textFieldStyle(.roundedBorder)
                .padding()
        }
    }
}

#Preview {
    AmountView(amount: .constant("0"))
}
