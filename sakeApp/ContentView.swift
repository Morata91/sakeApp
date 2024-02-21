//
//  ContentView.swift
//  sakeApp
//
//  Created by 村田航希 on 2024/02/22.
//

import SwiftUI






struct SakeEntryView: View {
    var body: some View {
        Text("Sake Entry View")
    }
}




struct ContentView: View {
    var body: some View {
        TabView {
            SakeEntryView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("入力")
                }
            SakeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("リスト")
                }
            VStack {
                SakeMapview()
                Spacer()
            }
            .tabItem {
                Image(systemName: "map")
                Text("地図")
                
            }
            SakeBrandListView()
                .tabItem {
                    Image(systemName: "cocktail")
                    Text("銘柄一覧")
                }
            
        }
        
    }
}

#Preview {
    ContentView()
}
