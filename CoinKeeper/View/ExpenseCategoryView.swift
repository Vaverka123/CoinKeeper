//
//  ExpenseCategoryView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI

struct ExpenseCategoryView: View {
    
//    @State private var selected = 1
//    
    var body: some View {
//        VStack(spacing: 20) {
//            Picker (selection: $selected, label: Text("New expense")) {
//                Label("Shopping", systemImage: "cart").tag(1)
//                Label("Cafe", systemImage: "fork.knife.circle").tag(2)
//                Label("Entertainment", systemImage: "theatermasks").tag(3)
//                Label("Education", systemImage: "graduationcap").tag(4)
//                Label("Travel", systemImage: "suitcase.rolling").tag(5)
//                Label("Bills", systemImage: "house.circle").tag(6)
//                Label("Gifts", systemImage: "gift").tag(7)
//                Label("Health", systemImage: "cross.case.circle.fill").tag(8)
//            }
//            .pickerStyle(RadioGroupPickerStyle())
//        }
//       
//        .padding(20)
//    
        
        VStack {
                
                  ExpenseGroup { selected in
                      print("Selected ExpenseCategory is: \(selected)")
                  }
              }.padding(20)
            .navigationTitle("Select category")
           
        Spacer()
    }
}

#Preview {
    ExpenseCategoryView()
}
