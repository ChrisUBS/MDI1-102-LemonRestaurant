//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 05/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "sun.max")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                Text("Hello, cohort 2!")
                    .padding()
                NavigationLink(destination: AboutView()) {
                    Text("Go to About")
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle(Text("Home"))
    }
}

#Preview {
    ContentView()
}
