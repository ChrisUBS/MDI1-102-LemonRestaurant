//
//  MenuItemView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 8/16/25.
//

import SwiftUI

struct MenuItemView: View {
    
    var item: MenuItem
    
    var body: some View {
        HStack(){
            VStack(alignment: .leading){
                Text(item.name)
                    .font(.headline)
                
                Text(item.description)
                
                Text("$\(item.price, specifier: "%.2f")")
                    .foregroundColor(Color.secondary)
            }
            
            Spacer()
            
            if item.price < 7.0 {
                Text("Value")
                    .font(.caption.weight(.semibold))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(
                        Capsule().fill(Color.green.opacity(0.15))
                    )
                    .foregroundColor(.green)
                    .overlay(
                        Capsule().stroke(Color.green, lineWidth: 1)
                    )
            } else {
                Text("Premium")
                    .font(.caption.weight(.semibold))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 4)
                    .background(
                        Capsule().fill(Color.blue.opacity(0.15))
                    )
                    .foregroundColor(.blue)
                    .overlay(
                        Capsule().stroke(Color.blue, lineWidth: 1)
                    )
            }
        }
    }
}

//#Preview {
//    MenuItemView()
//}
