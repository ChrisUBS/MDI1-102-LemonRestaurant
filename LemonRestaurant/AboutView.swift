//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 05/08/25.
//

import SwiftUI

struct AboutView: View {
    
    let userName = "Christian"
    @State private var orders = 0
    @State private var userName2 = ""
    @State private var reservations = 0
    
    var body: some View {
            VStack{
                Text("Welcome \(userName) to Little Lemon!")
                    .font(.title)
                    .padding()
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Text("You have ordered \(orders) times")
                Button("Order again"){
                  orders += 1
                }
                // Challenge: add another button to reset orders to 0
                Button("Reset orders"){
                    orders = 0
                }
                
                // Mini form
                TextField("Enter your name",
                          text: $userName2)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Text("Hi, \(userName2)")
                
                Button("Add reservation") {
                    reservations += 1
                }
                Text("Reservations: \(reservations)")
                    .padding()
                Text(String(repeating: "🍽️", count:reservations))
                    .padding()
            }
            .navigationTitle(Text("About Us"))
        }
}

#Preview {
    AboutView()
}
