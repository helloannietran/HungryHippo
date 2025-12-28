//
//  LoadingView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack(spacing: 16) {
            HippoView()
            Text("Hippo is thinking...")
                .font(.headline)
        }
    }
}
