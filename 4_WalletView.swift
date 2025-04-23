//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct WalletView: View {
    @State private var balance = 0.0

    var body: some View {
        VStack(spacing: 20) {
            Text("💰 Wallet Balance")
                .font(.title2)

            Text("\(balance, specifier: "%.2f") BTC")
                .font(.largeTitle)

            Button("Mine Bitcoin") {
                balance += 0.01
            }
        }
        .padding()
    }
}

#Preview {
    WalletView()
}
