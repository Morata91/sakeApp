//
//  Sake.swift
//  sakeApp
//
//  Created by 村田航希 on 2024/02/22.
//

import SwiftUI

struct Sake: Identifiable {
    var id = UUID()
    var name: String
    var kana: String // 銘柄の振り仮名データ
    var prefecture: String
    var brewery: String
    var type: String
    var image: String // 画像のパスなどを保存する
    var latitude: Double // 酒造の緯度
    var longitude: Double // 酒造の経度
}

let dummySakes = [
    Sake(name: "山田", kana: "やまだ", prefecture: "山口県", brewery: "〇〇酒造", type: "吟醸", image: "sake1", latitude: 35.1234, longitude: 139.5678),
    Sake(name: "佐藤", kana: "さとう", prefecture: "新潟県", brewery: "△△酒造", type: "純米", image: "sake2", latitude: 36.9876, longitude: 140.9876),
    Sake(name: "鈴木", kana: "すずき", prefecture: "京都府", brewery: "××酒造", type: "大吟醸", image: "sake3", latitude: 34.5678, longitude: 135.6789),
    // 他のダミーデータ
    Sake(name: "田中", kana: "たなか", prefecture: "東京都", brewery: "東京酒造", type: "純米", image: "sake4", latitude: 35.6895, longitude: 139.6917),
    Sake(name: "高橋", kana: "たかはし", prefecture: "北海道", brewery: "北海道酒造", type: "吟醸", image: "sake5", latitude: 43.0618, longitude: 141.3545),
    Sake(name: "渡辺", kana: "わたなべ", prefecture: "愛知県", brewery: "愛知酒造", type: "大吟醸", image: "sake6", latitude: 35.1802, longitude: 136.9066),
    // さらに他のダミーデータ
]



