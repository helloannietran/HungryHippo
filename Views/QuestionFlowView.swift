//
//  QuestionFlowView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct QuestionFlowView: View {
    @EnvironmentObject var vm: MealDecisionViewModel

    var body: some View {
        VStack(spacing: 32) {
            VStack(spacing: 12) {
                Text("How are you feeling?")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.purple)
                
                MoodSelector(selectedMood: $vm.selectedMood)
            }

            VStack(spacing: 12) {
                Text("What meal?")
                    .font(.title3)
                    .bold()
                    .foregroundColor(.blue)
                
                ForEach(MealCategory.allCases, id: \.self) { category in
                    PillButton(
                        title: category.rawValue,
                        isSelected: vm.selectedCategory == category,
                        color: .pink
                    ) {
                        vm.selectedCategory = category
                    }
                }
            }

            Button("Decide for me 🍽️") {
                vm.decideMeal()
            }
            .disabled(vm.selectedMood == nil || vm.selectedCategory == nil)
            .buttonStyle(.borderedProminent)
            .tint(Color.orange)
        }
        .padding()
    }
}
