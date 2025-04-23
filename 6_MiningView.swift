//
//  SwiftUIView.swift
//  SwiftUI Demo
//
//  Created by Tal Zion on 23/04/2025.
//

import SwiftUI

struct MiningView: View {
    
    @State private var isMining = false

    var body: some View {
        VStack(spacing: 30) {
            Image(systemName: isMining ? "bitcoinsign.circle.fill" : "bitcoinsign.circle")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(isMining ? .green : .gray)
                .rotationEffect(.degrees(isMining ? 360 : 0))
                .animation(.easeInOut(duration: 1), value: isMining)

            Button("Toggle Mining") {
                isMining.toggle()
            }
        }
    }
}
#Preview {
    MiningView()
}
