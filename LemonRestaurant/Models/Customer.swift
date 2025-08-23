//
//  Customer.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 8/22/25.
//

import Foundation

struct Customer {
    var name: String
    var email: String
    var isLoyaltyMember: Bool
    var favoriteDishes: [String]
    
    func customerSummary() -> String {
        let loyalty = isLoyaltyMember ? "is a loyalty member" : "is not a loyalty member"
        let dishes = favoriteDishes.joined(separator: ", ")
        return "\(name) \(loyalty). Favorite dishes: \(dishes)"
    }
}
