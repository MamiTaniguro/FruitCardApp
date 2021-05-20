//
//  FructusApp.swift
//  Fructus
//
//  Created by mami taniguro on 5/17/21.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboadring: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboadring {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
