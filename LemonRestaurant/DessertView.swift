//
//  DessertView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 8/16/25.
//

import SwiftUI

struct DessertView: View {
    
    let dessertsItems = [
        DessertItem(
            name: "Ice Cream",
            description: "Very cold",
            price: 3.99
        ),
        DessertItem(
            name: "Chocolate Cookie",
            description: "A lot of chocolate",
            price: 1.99
        ),
        DessertItem(
            name: "Cheesecake",
            description: "Very creamy",
            price: 1.99
        )
    ]
    
    var body: some View {
        HStack{
            Text("Desserts")
                .font(.title)
                .bold()
                .padding()
            
            Spacer()
        }
        
        List(dessertsItems){ item in
            HStack(){
                VStack(alignment: .leading){
                    Text(item.name)
                        .font(.headline)
                    
                    Text(item.description)
                }
                
                Spacer()
                
                Text("$\(item.price, specifier: "%.2f")")
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    DessertView()
}
