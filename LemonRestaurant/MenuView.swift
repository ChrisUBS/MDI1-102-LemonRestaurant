//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 14/08/25.
//

import SwiftUI

struct MenuView: View {
    
    //    let menuItems: [String : Double] = [
    //        "Pizza" : 9.99,
    //        "Past" : 10.50,
    //        "Salad" : 6.00,
    //        "Soup" : 4.75,
    //        "Steak" : 14.99,
    //        "Chocolate Cake" : 5.75
    //    ]
    
    @State private var showMessage:Bool = false
    @State private var showThankYouMessage:Bool = false
    @State private var showDesserts: Bool = false
    
    let menuItems = [
        MenuItem(
            name: "Pizza",
            description: "Cheesy and hot",
            price: 9.0
        ),
        MenuItem(
            name: "Steak",
            description: "Grilled to perfection",
            price: 8.0
        ),
        MenuItem(
            name: "Past",
            description: "Spaghetti",
            price: 8.0
        ),
        MenuItem(
            name: "Caesar Salad",
            description: "Romaine lettuce with creamy Caesar dressing",
            price: 10.99
        ),
        MenuItem(
            name: "Burger",
            description: "Spicy chicken",
            price: 6.99
        ),
        MenuItem(
            name: "Tacos",
            description: "3 adobada tacos",
            price: 9.99
        ),
        MenuItem(
            name: "Hot Dog",
            description: "Long sausage",
            price: 4.99
        )
    ]
    
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's menu")
                    .font(.largeTitle)
            }
            .padding()
            
            // VStack
            VStack(spacing: 20){
                Toggle("Show an special text", isOn: $showMessage)
                    .padding(.horizontal)
                
                if showMessage {
                    Text("You unlocked a surprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }
                
//                Toggle("Show Thank You Message", isOn: $showThankYouMessage)
//                    .padding()
//                
//                if showThankYouMessage {
//                    Text("Thanks for visiting Little Lemon!")
//                        .font(.title3)
//                        .italic()
//                        .foregroundColor(.blue)
//                }
                
                Button("View Desserts") {
                    showDesserts.toggle()
                }
                .font(.title3)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .background(
                    Capsule().fill(Color.green.opacity(0.15))
                )
                .foregroundColor(.green)
                .padding()
                .sheet(isPresented: $showDesserts) {
                    DessertView()
                }
            }
            
            List(menuItems){ item in
                MenuItemView(item: item)
            }
            
//            List {
//                Text("We currently offer \(menuItems.count) menu items")
//                    .italic()
//                    .frame(maxWidth: .infinity, alignment: .center)
//                
//                ForEach(menuItems.sorted(by: {$0.key > $1.key}), id: \.key){(name, price) in
//                    HStack{
//                        VStack(alignment: .leading){
//                            Text(name)
//                                .font(.headline)
//                            
//                            Text("$ \(price, specifier: "%.2f")")
//                                .foregroundColor(.secondary)
//                        }
//                        
//                        Spacer()
//                        
//                        if price < 7.0 {
//                            Text("Value")
//                                .font(.caption.weight(.semibold))
//                                .padding(.horizontal, 10)
//                                .padding(.vertical, 4)
//                                .background(
//                                    Capsule().fill(Color.green.opacity(0.15))
//                                )
//                                .foregroundColor(.green)
//                                .overlay(
//                                    Capsule().stroke(Color.green, lineWidth: 1)
//                                )
//                        } else {
//                            Text("Premium")
//                                .font(.caption.weight(.semibold))
//                                .padding(.horizontal, 10)
//                                .padding(.vertical, 4)
//                                .background(
//                                    Capsule().fill(Color.blue.opacity(0.15))
//                                )
//                                .foregroundColor(.blue)
//                                .overlay(
//                                    Capsule().stroke(Color.blue, lineWidth: 1)
//                                )
//                        }
//                    }
//                }
//            }
        }
    }
}

#Preview {
    MenuView()
}
