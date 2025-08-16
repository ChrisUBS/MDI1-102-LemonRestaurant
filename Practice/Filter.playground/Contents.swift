import UIKit

/*
 Filter
 
 Creates a new array containing only elements that satisfy a give condition
 */

// Example 1
let values: [Double] = [12.0, 8.5, 4.5, 14.99]

for value in values{
    if value > 10{
        print(value)
    }
}

let premium = values.filter{$0 > 10}
print(premium)

// Example 2
let dishes: [String] = ["Burger", "Fries", "Fish", "Pasta"]
let filtered = dishes.filter{$0.hasPrefix("F")}
print(filtered)

/*
 Mini-Challenge
 
 Filter an array of dish names to find vegetarian options
 (hint: include keyword like 'salad' .contains() )
 */
let vegetarianMenu: [String] = ["Veggie Salad", "Steak", "Fruit Bowl", "Chicken"]
let filteredMenu = vegetarianMenu.filter {
    $0.contains("Salad") || $0.contains("Fruit")
}
print(filteredMenu)
