//
//  Meal.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import Foundation

struct Meal: Identifiable {
    let id = UUID()
    let name: String
    let category: MealCategory
    let moods: [Mood]
}
