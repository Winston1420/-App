//
//  BarView.swift
//  Homework2
//
//  Created by User05 on 2020/10/14.
//

import SwiftUI

struct BarView: View {
    var body: some View {
        TabView{
            Home()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("主頁")
                }
            Menu()
                .tabItem {
                    Image(systemName: "tray.fill")
                    Text("食物")
                }
            Worker()
                .tabItem {
                    Image(systemName: "bookmark.fill")
                    Text("工人")
                }
        }
    }
}

struct BarView_Previews: PreviewProvider {
    static var previews: some View {
        BarView()
    }
}
