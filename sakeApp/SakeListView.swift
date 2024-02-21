//
//  SakeListView.swift
//  sakeApp
//
//  Created by 村田航希 on 2024/02/22.
//

import SwiftUI

struct SakeListView: View {
    let sakes: [Sake] = dummySakes // ダミーデータを使用します

    var body: some View {
        NavigationView {
            List(sakes) { sake in
                NavigationLink(destination: SakeDetailView(sake: sake)) {
                    SakeRowView(sake: sake)
                }
            }
            .navigationTitle("日本酒リスト")
        }
    }
}

struct SakeRowView: View {
    let sake: Sake

    var body: some View {
        HStack {
            // 画像を表示する（省略）
            Text(sake.name)
            Spacer()
            Text(sake.prefecture)
        }
        .padding()
    }
}

struct SakeDetailView: View {
    let sake: Sake

    var body: some View {
        VStack {
            // ここで日本酒の詳細情報を表示します（省略）
            Text(sake.name)
            Text(sake.prefecture)
            Text(sake.brewery)
            Text(sake.type)
            // 画像を表示する（省略）
        }
        .navigationTitle(sake.name)
    }
}

