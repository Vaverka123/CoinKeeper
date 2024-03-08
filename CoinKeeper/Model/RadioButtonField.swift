//
//  RadioButtonView.swift
//  CoinKeeper
//
//  Created by Vera Maslava on 04/03/2024.
//

import SwiftUI


//MARK:- Single Radio Button Field
struct RadioButtonField: View {
    
        let id: String
        let label: String
        let size: CGFloat
        let color: Color
        let textSize: CGFloat
        let isMarked:Bool
        let callback: (String)->()
        
        init(
            id: String,
            label:String,
            size: CGFloat = 20,
            color: Color = Color.black,
            textSize: CGFloat = 14,
            isMarked: Bool = false,
            callback: @escaping (String)->()
            )
    {
            self.id = id
            self.label = label
            self.size = size
            self.color = color
            self.textSize = textSize
            self.isMarked = isMarked
            self.callback = callback
        }
    
    var body: some View {
        Button(action:{
                  self.callback(self.id)
              }) {
                  HStack {
                      Text(label)
                          .font(Font.system(size: textSize))
                      Spacer()
                      Image(systemName: self.isMarked ? "largecircle.fill.circle" : "circle")
                          .renderingMode(.original)
                          .resizable()
                          .aspectRatio(contentMode: .fit)
                          .frame(width: self.size, height: self.size)
                  
                     
                  }.foregroundColor(self.color)
              }
              .foregroundColor(Color.white)
          }
    }
