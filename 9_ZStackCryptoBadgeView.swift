//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct CryptoBadgeView: View {
    var coinName: String = "BTC"

    var body: some View {
        ZStack {
            // Background Layer
            Circle()
                .fill(
                    RadialGradient(gradient: Gradient(colors: [.orange, .black]),
                                   center: .center,
                                   startRadius: 20,
                                   endRadius: 100)
                )
                .frame(width: 120, height: 120)
                .shadow(radius: 10)

            // Middle Layer (SF Symbol)
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.yellow)

            // Top Layer (Text)
            VStack {
                Spacer()
                Text(coinName)
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.bottom, 8)
            }
        }
        .frame(width: 150, height: 150)
    }
}

#Preview {
    CryptoBadgeView()
}
