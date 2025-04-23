//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct CryptoCardView: View {
    var coinName = "Bitcoin"
    var value = "$93,400"

    var body: some View {
        VStack {
            Text(coinName).font(.title)
            Text(value).font(.headline)
        }
        .padding()
        .background(Color.orange.opacity(0.2))
        .cornerRadius(12)
    }
}

#Preview {
    CryptoCardView()
}
