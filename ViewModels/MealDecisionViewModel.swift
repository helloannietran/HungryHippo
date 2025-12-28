//
//  MealDecisionViewModel.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

class MealDecisionViewModel: ObservableObject {
    @Published var selectedMood: Mood?
    @Published var selectedCategory: MealCategory?
    @Published var isLoading = false
    @Published var selectedMeal: Meal?

    func decideMeal() {
        isLoading = true
        selectedMeal = nil

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            let filtered = MealData.meals.filter {
                $0.moods.contains(self.selectedMood!) &&
                $0.category == self.selectedCategory!
            }
            self.selectedMeal = filtered.randomElement()
            self.isLoading = false
        }
    }
}
