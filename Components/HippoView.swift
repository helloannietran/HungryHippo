//
//  HippoView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct HippoView: View {
    var size: CGFloat = 90
    @State private var rotation: Double = 0

    var body: some View {
        Text("🦛")
            .font(.system(size: size))
            .rotationEffect(.degrees(rotation))
            .onAppear {
                withAnimation(
                    .easeInOut(duration: 0.6)
                    .repeatForever(autoreverses: true)
                ) {
                    rotation = Double.random(in: -25...25)
                }
            }
    }
}
