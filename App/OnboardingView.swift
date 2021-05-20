//
//  OnboardingView.swift
//  Fructus
//
//  Created by mami taniguro on 5/18/21.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTY
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
