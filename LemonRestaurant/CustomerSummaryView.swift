//
//  CustomerSummaryView.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 8/22/25.
//

import SwiftUI

struct CustomerSummaryView: View {
    
    // Use @State to simulate a sample customer and show their information using Text elements.
    @State private var customer = Customer(
        name: "Alice",
        email: "alice@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Pizza", "Pasta"]
    )
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text("Customer Summary")
                .font(.title)
                .bold()
            
            Text("Name: \(customer.name)")
            Text("Email: \(customer.email)")
            
            if customer.isLoyaltyMember {
                HStack{
                    Image(systemName: "star")
                    Text("Loyalty Member")
                }
            }
            
            Text("Favorite: \(customer.favoriteDishes.joined(separator: ", "))")
            
            Divider()
            
            Text(customer.customerSummary())
        
            Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)
        }
        .padding()
    }
}

#Preview {
    CustomerSummaryView()
}
