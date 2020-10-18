//
//  Menu.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import SwiftUI

struct Menu: View {
    var body: some View {
        NavigationView {
            List {
                ScrollView(.horizontal){
                    HStack(spacing: 20) {
                        ForEach(1 ..< 5){(item) in
                            Image("\(item)")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200)
                                .clipped()
                        }
                    }
                }
                ForEach(foods.indices){(item) in
                    NavigationLink(
                        destination: FoodExp(food: foods[item])){
                        MenuRow(food: foods[item])
                    }
                }
            }
            .navigationBarTitle(Text("食物"), displayMode: (.large))
        }
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
