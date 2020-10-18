//
//  FoodExp.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import SwiftUI

struct FoodExp: View {
    
    let food: food
    
    
    var body: some View {
        VStack {
            Image(food.name)
                .resizable()
                .scaledToFill()
                .frame(height: 260.0)
                .clipped()
            Text(food.exp)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            .padding()
            Spacer()
        }
        .navigationBarTitle(food.name)
    }
}

struct FoodExp_Previews: PreviewProvider {
    static var previews: some View {
        FoodExp(food: foods[0])
    }
}
