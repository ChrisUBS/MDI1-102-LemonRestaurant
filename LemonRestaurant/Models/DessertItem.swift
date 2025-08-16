//
//  DessertItem.swift
//  LemonRestaurant
//
//  Created by Christian Bonilla on 8/16/25.
//

import Foundation

struct DessertItem: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String
    var price: Double
}
