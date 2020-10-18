//
//  Introduction.swift
//  Homework2
//
//  Created by User04 on 2020/10/12.
//

import SwiftUI

struct Introduction: View {
    var body: some View {
        ZStack{
         Image("Background")
            .resizable()
            .blur(radius: 1.0)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Image("Restaurant2")
                    .resizable()
                    .scaledToFit()
                VStack{
                    Text("我們餐廳自1989年成立以來。我們餐廳的食物質量很好，服務也很好。")
                        .background(Rectangle().fill(Color.white))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                    HStack{
                        Link(destination: URL(string: "https://www.facebook.com")!, label: {
                            Image("Facebook")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .aspectRatio(contentMode: .fit)
                        })
                        Link(destination: URL(string: "https://www.instagram.com")!, label: {
                            Image("Instagram")
                                .resizable()
                                .frame(width: 80, height: 80)
                                .aspectRatio(contentMode: .fit)
                        })
                    }
                }
            }
        }
    }
}

struct Introduction_Previews: PreviewProvider {
    static var previews: some View {
        Introduction()
    }
}
