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
        VStack(spacing: 24) {
            Text("How are you feeling?")
                .font(.title2)

            MoodSelector(selectedMood: $vm.selectedMood)

            Text("What meal?")
                .font(.title3)

            ForEach(MealCategory.allCases, id: \.self) { category in
                PillButton(
                    title: category.rawValue,
                    isSelected: vm.selectedCategory == category
                ) {
                    vm.selectedCategory = category
                }
            }

            Button("Decide for me 🍽️") {
                vm.decideMeal()
            }
            .disabled(vm.selectedMood == nil || vm.selectedCategory == nil)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
