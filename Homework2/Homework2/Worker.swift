//
//  Worker.swift
//  Homework2
//
//  Created by User04 on 2020/10/18.
//

import SwiftUI

struct Worker: View {
    
    let workers = [
        "李靜義",
        "陳美林",
        "劉美灵",
        "黃秋月",
        "王淑芬"
    ]
    
    var body: some View {
        NavigationView{
        ScrollView(.vertical) {
            let columns = [GridItem()]
            LazyVGrid(columns: columns) {
                ForEach (workers.indices) { (index) in
                    VStack {
                        Image(workers[index])
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                            .clipped()
                        Text(workers[index])
                            .bold()
                            .font(.title2)
                    }
                }
            }
        }
        .navigationBarTitle(Text("工人"), displayMode: .large)
        .background(Image("Background1"))
        }
    }
}

struct Worker_Previews: PreviewProvider {
    static var previews: some View {
        Worker()
    }
}
