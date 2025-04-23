//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct CoinListView: View {
    let coins = ["BTC", "ETH", "SOL", "ADA"]
    @State private var selectedCoin: String?
    
    var body: some View {
        NavigationView {
            List(coins, id: \.self) { coin in
                NavigationLink(destination: Text("Details for \(coin)")) {
                    Text(coin)
                }
            }
            .navigationTitle("📈 Crypto List")
        }
        
        NavigationView {
                List(coins, id: \.self) { coin in
                    Text(coin)
                        .onTapGesture {
                            selectedCoin = coin
                        }
                }
                .navigationTitle(
                    selectedCoin == nil
                        ? "📈 Crypto List"
                        : "📈 \(selectedCoin ?? "")"
                )
            }
    }
}

#Preview {
    CoinListView()
}
