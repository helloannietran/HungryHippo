//
//  MealDecisionViewModel.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI
import Combine

final class MealDecisionViewModel: ObservableObject {

    @Published var selectedMood: Mood? = nil
    @Published var selectedCategory: MealCategory? = nil
    @Published var selectedMeal: Meal? = nil
    @Published var isLoading: Bool = false

    init() {}

    func decideMeal() {
        guard let mood = selectedMood,
              let category = selectedCategory else { return }

        isLoading = true
        selectedMeal = nil

        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            let options = MealData.meals.filter {
                $0.category == category && $0.moods.contains(mood)
            }

            self.selectedMeal = options.randomElement()
            self.isLoading = false
        }
    }

    func reset() {
        selectedMood = nil
        selectedCategory = nil
        selectedMeal = nil
    }
}
