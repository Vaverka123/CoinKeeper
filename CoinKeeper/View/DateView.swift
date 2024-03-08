//
//  DateView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 08/03/2024.
//

import SwiftUI

struct DateView: View {
    
    @Binding var date: Date
    
    var body: some View {
        DatePicker(
            "Date",
            selection: $date,
            displayedComponents: [.date, .hourAndMinute])
    }
}

#Preview {
    DateView(date: .constant(.now))
}
