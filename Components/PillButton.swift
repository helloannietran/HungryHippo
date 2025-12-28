//
//  PillButton.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct PillButton: View {
    let title: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(title, action: action)
            .padding()
            .frame(maxWidth: .infinity)
            .background(isSelected ? Color.pink : Color.gray.opacity(0.2))
            .foregroundColor(.black)
            .clipShape(Capsule())
    }
}
