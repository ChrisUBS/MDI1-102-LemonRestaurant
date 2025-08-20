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
                Text("$\(item.price, specifier: "%.2f")")
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.green)
            } else {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                
                Text("Premium")
                    .font(.title3.weight(.semibold))
                    .foregroundColor(.yellow)
            }
        }
    }
}

//#Preview {
//    MenuItemView()
//}
