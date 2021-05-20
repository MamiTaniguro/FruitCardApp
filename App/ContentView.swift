//
//  ContentView.swift
//  Fructus
//
//  Created by mami taniguro on 5/17/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    
    var body: some View {
        NavigationView{
            List {
                ForEach(fruit.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
