//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct CoinsView: View {
    var body: some View {
        VStack {
            CoinRow(coin: "BTC", price: "$67,000")
            CoinRow(coin: "SOL", price: "$155")
        }
        .padding()
    }
}

struct CoinRow: View {
    var coin = "ETH"
    var price = "$3,000"
    
    var body: some View {
        HStack {
            Text(coin)
            Spacer()
            Text(price)
        }
        .padding()
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    CoinsView()
}
