//
//  Home.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("Background")
                    .resizable()
                    .blur(radius: 1.0)
                    .edgesIgnoringSafeArea(.all)
                Image("Restaurant")
                    .resizable()
                    .scaledToFit()
                    .position(x: 160, y: 170)
                    .animation(.easeInOut(duration: 4))
                VStack{
                    NavigationLink(
                        destination: Introduction(),
                        label: {
                            Text("餐廳介紹") .font(.custom(String("SentyWEN2017"), size: 30))
                        })
                        .position(x: 160, y: 350)
                        .foregroundColor(.black)
                }
            }
            .navigationBarTitle(Text("歡迎光臨我們的餐廳"), displayMode: .large)
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
