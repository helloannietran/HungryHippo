//
//  HippoView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct HippoView: View {
    @State private var rotation = Double.random(in: -15...15)

    var body: some View {
        Text("🦛")
            .font(.system(size: 80))
            .rotationEffect(.degrees(rotation))
            .onAppear {
                withAnimation(.easeInOut(duration: 0.6).repeatForever()) {
                    rotation = Double.random(in: -30...30)
                }
            }
    }
}
