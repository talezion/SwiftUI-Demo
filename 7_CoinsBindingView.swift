//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct BindingCoinListView: View {
    let coins = ["BTC","ETH","SOL","ADA"]
    @Binding var selectedCoin: String?   // ← now injected

    var body: some View {
        List(coins, id: \.self) { coin in
            Text(coin)
              .onTapGesture { selectedCoin = coin }
        }
        .navigationTitle(
           selectedCoin.map { "📈 \($0)" } ?? "📈 Crypto List"
        )
    }
}

struct BindingCoinListParentView: View {
    @State private var selectedCoin: String?

    var body: some View {
      NavigationView {
          BindingCoinListView(selectedCoin: $selectedCoin)
      }
    }
}

#Preview {
    BindingCoinListParentView()
}
