//
//  MoodSelector.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct MoodSelector: View {
    @Binding var selectedMood: Mood?

    var body: some View {
        VStack(spacing: 10) {
            ForEach(Mood.allCases, id: \.self) { mood in
                PillButton(
                    title: mood.rawValue,
                    isSelected: selectedMood == mood,
                    color: .purple
                ) {
                    selectedMood = mood
                }
            }
        }
    }
}
