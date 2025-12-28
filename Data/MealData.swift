//
//  MealData.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import Foundation

struct MealData {
    static let meals: [Meal] = [
        Meal(name: "Pancakes 🥞", category: .breakfast, moods: [.happy, .celebratory]),
        Meal(name: "Avocado Toast 🥑", category: .brunch, moods: [.happy]),
        Meal(name: "Ramen 🍜", category: .lunch, moods: [.tired, .stressed]),
        Meal(name: "Salad 🥗", category: .lunch, moods: [.happy]),
        Meal(name: "Burger 🍔", category: .dinner, moods: [.celebratory]),
        Meal(name: "Pasta 🍝", category: .dinner, moods: [.stressed, .happy])
    ]
}
