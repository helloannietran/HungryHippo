//
//  MealResultView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct MealResultView: View {
    let meal: Meal
    @EnvironmentObject var vm: MealDecisionViewModel

    var body: some View {
        VStack(spacing: 40) {
            HippoView(size: 120)
            
            Text("You should eat:")
                .font(.title2)
                .bold()
                .foregroundColor(.purple)
            
            Text(meal.name)
                .font(.largeTitle)
                .bold()
                .foregroundColor(.orange)
            
            Button("Decide Again 🔄") {
                vm.reset()
            }
            .buttonStyle(.borderedProminent)
            .tint(Color.green)
        }
        .padding()
        .background(Color("PastelBackground").ignoresSafeArea())
    }
}
