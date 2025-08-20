//
//  MenuView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 14/08/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage: Bool = false
    @State private var showThankYouMessage: Bool = false
    @State private var showDesserts: Bool = false
    
    let menuItems = [
        MenuItem(name: "Pizza",         description: "Cheesy and hot",                                price: 9.0),
        MenuItem(name: "Steak",         description: "Grilled to perfection",                         price: 10.0),
        MenuItem(name: "Past",          description: "Spaghetti",                                      price: 8.0),
        MenuItem(name: "Caesar Salad",  description: "Romaine lettuce with creamy Caesar dressing",    price: 10.99),
        MenuItem(name: "Burger",        description: "Spicy chicken",                                  price: 11.99),
        MenuItem(name: "Tacos",         description: "3 adobada tacos",                                price: 9.99),
        MenuItem(name: "Hot Dog",       description: "Long sausage",                                   price: 4.99)
    ]
    
    var visibleItems: [MenuItem] {
        showMessage ? menuItems.filter { $0.price >= 10 } : menuItems
    }
    var premiumCount: Int {
        visibleItems.filter { $0.price >= 10 }.count
    }
    
    var regularCount: Int {
        visibleItems.filter { $0.price < 10 }.count
    }
    
    var totalPrice: Double {
        visibleItems.reduce(0) { $0 + $1.price }
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                
                Text("Today's menu")
                    .font(.largeTitle)
            }
            .padding()
            
            // Controles y extra
            VStack(spacing: 16) {
                Toggle("Show only premium items (≥ $10)", isOn: $showMessage)
                    .padding(.horizontal)
                
//                if showMessage {
//                    Text("You unlocked a surprise! (Showing only premium)")
//                        .font(.title3)
//                        .foregroundColor(.green)
//                }
                
                Button("View Desserts") {
                    showDesserts.toggle()
                }
                .font(.title3)
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .background(Capsule().fill(Color.green.opacity(0.15)))
                .foregroundColor(.green)
                .padding(.top, 4)
                .sheet(isPresented: $showDesserts) {
                    DessertView()
                }
            }
            
            List {
                Section(header:
                    Text("Showing \(visibleItems.count) items")
                        .font(.headline)
                        .textCase(nil) // Evita que SwiftUI lo ponga en mayúsculas
                ) {
                    ForEach(visibleItems) { item in
                        MenuItemView(item: item)
                    }
                }
            }
            
            HStack(spacing: 12) {
                Text("Premium: \(premiumCount)")
                Text("|")
                Text("Regular: \(regularCount)")
                Text("|")
                Text("Total: \(totalPrice, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))")
            }
            .font(.subheadline.weight(.semibold))
            .padding()
        }
    }
}

#Preview {
    MenuView()
}
