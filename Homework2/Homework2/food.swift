//
//  food.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import Foundation

struct food {
    let name: String
    let image: String
    let exp: String
    
    #if DEBUG
    static let demo = food (name:"Bolognese", image: "Bolognese", exp: "Price \n $$$")
    #endif
    
}
