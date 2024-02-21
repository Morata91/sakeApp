

import requests
import json

def fetch_and_save_data(endpoint, filename):
    try:
        # HTTP GETリクエストの送信
        response = requests.get(endpoint)

        # レスポンスのステータスコードの確認
        if response.status_code == 200:
            # JSONデータの取得
            json_data = response.json()

            # JSONデータをファイルに書き込み
            with open(filename, "w", encoding="utf-8") as f:
                json.dump(json_data, f, ensure_ascii=False, indent=4)
            
            print(f"JSON data written to {filename} successfully.")
        else:
            print(f"HTTP status code: {response.status_code}")

    except Exception as e:
        print(f"Error: {e}")

# 関数を呼び出して実行
if __name__ == "__main__":
    # エンドポイントとファイル名の対応
    endpoints = {
        "https://muro.sakenowa.com/sakenowa-data/api/areas": "areas.json",
        "https://muro.sakenowa.com/sakenowa-data/api/brands": "brands.json",
        "https://muro.sakenowa.com/sakenowa-data/api/breweries": "breweries.json",
        "https://muro.sakenowa.com/sakenowa-data/api/rankings": "rankings.json",
        "https://muro.sakenowa.com/sakenowa-data/api/flavor-charts": "flavor-charts.json",
        "https://muro.sakenowa.com/sakenowa-data/api/flavor-tags": "flavor-tags.json",
        "https://muro.sakenowa.com/sakenowa-data/api/brand-flavor-tags": "brand-flavor-tags.json"
    }

    # 各エンドポイントからデータを取得し、JSONファイルに保存する
    for endpoint, filename in endpoints.items():
        fetch_and_save_data(endpoint, filename)

