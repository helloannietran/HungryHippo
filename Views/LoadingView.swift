//
//  LoadingView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 20) {
            HippoView(size: 120)
            Text("Hippo is thinking...")
                .font(.headline)
                .foregroundColor(.purple)
        }
    }
}
