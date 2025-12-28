//
//  MealResultView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct MealResultView: View {
    let meal: Meal

    var body: some View {
        VStack(spacing: 20) {
            Text("You should eat:")
                .font(.title2)
            Text(meal.name)
                .font(.largeTitle)
            Button("Decide Again 🔄") {
                UIApplication.shared.sendAction(
                    #selector(UIResponder.resignFirstResponder),
                    to: nil, from: nil, for: nil
                )
            }
        }
    }
}
