//
//  SakeBrandListView.swift
//  sakeApp
//
//  Created by 村田航希 on 2024/02/22.
//

import SwiftUI

struct SakeBrandListView: View {
    let sakes: [Sake] = dummySakes // ダミーデータを使用します
    
    @State private var sortOption: SortOption = .alphabetically

    var body: some View {
        NavigationView {
            VStack {
                Picker("並べ替え", selection: $sortOption) {
                    Text("あいうえお順").tag(SortOption.alphabetically)
                    Text("都道府県順").tag(SortOption.byPrefecture)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                List {
                    if sortOption == .byPrefecture {
                        ForEach(groupedSakes.keys.sorted(), id: \.self) { prefecture in
                            Section(header: Text(prefecture)) {
                                ForEach(groupedSakes[prefecture]!, id: \.id) { sake in
                                    NavigationLink(destination: SakeDetailView(sake: sake)) {
                                        Text(sake.name)
                                    }
                                }
                            }
                        }
                    } else {
                        ForEach(sortedSakes, id: \.id) { sake in
                            NavigationLink(destination: SakeDetailView(sake: sake)) {
                                Text(sake.name)
                            }
                        }
                    }
                }
                .navigationTitle("銘柄一覧")
            }
        }
    }
    
    var sortedSakes: [Sake] {
        return sakes.sorted { $0.name.localizedStandardCompare($1.name) == .orderedAscending }
    }
    
    var groupedSakes: [String: [Sake]] {
        var groupedSakes = [String: [Sake]]()
        for sake in sakes {
            groupedSakes[sake.prefecture, default: []].append(sake)
        }
        return groupedSakes
    }
}

enum SortOption {
    case alphabetically
    case byPrefecture
}



