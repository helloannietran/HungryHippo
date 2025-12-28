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
    var color: Color = .pink
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.body.bold())
                .padding()
                .frame(maxWidth: .infinity)
                .background(isSelected ? color.opacity(0.7) : Color.gray.opacity(0.2))
                .foregroundColor(isSelected ? .white : .black)
                .clipShape(Capsule())
        }
    }
}
