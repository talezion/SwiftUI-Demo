//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

class Wallet: ObservableObject {
    @Published var coins: [String] = ["BTC", "ETH"]

    func addCoin(_ coin: String) {
        coins.append(coin)
    }
}

struct ObserverdWalletView: View {
    @StateObject private var wallet = Wallet()
    @State private var newCoin: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("🪙 My Wallet")
                .font(.largeTitle)

            List(wallet.coins, id: \.self) { coin in
                Text(coin)
            }

            HStack {
                TextField("Add coin (e.g. SOL)", text: $newCoin)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button("Add") {
                    guard !newCoin.isEmpty else { return }
                    wallet.addCoin(newCoin)
                    newCoin = ""
                }
            }
            .padding()
        }
    }
}

#Preview {
    ObserverdWalletView()
}
