//
//  DescriptionView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 08/03/2024.
//

import SwiftUI
import Combine

struct DescriptionView: View {
    
    @Binding var descriptionInput: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Description:")
            TextField("Give some details", text: $descriptionInput)
                .textFieldStyle(.roundedBorder)
        }
    }
}

#Preview {
    DescriptionView(descriptionInput: .constant(""))
}
