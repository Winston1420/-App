//
//  MenuRow.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import SwiftUI

struct MenuRow: View {
    
    let food: food
    
    var body: some View {
        HStack {
            Image(food.name)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
            VStack(alignment: .leading){
                Text(food.name)
            }
            Spacer()
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(food: .demo)
            .previewLayout(.sizeThatFits)
    }
}
