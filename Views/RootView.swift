//
//  RootView.swift
//  
//
//  Created by Annie Tran on 12/28/25.
//

import SwiftUI

struct RootView: View {
    @StateObject private var vm = MealDecisionViewModel()

    var body: some View {
        NavigationStack {
            if vm.isLoading {
                LoadingView()
            } else if let meal = vm.selectedMeal {
                MealResultView(meal: meal)
            } else {
                QuestionFlowView()
                    .environmentObject(vm)
            }
        }
    }
}
