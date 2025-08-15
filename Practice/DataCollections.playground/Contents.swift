import UIKit

/*
 Dictionaries
 
 Syntax
 var dictionaryName = [key1:value1, key2:value2, key3:value3]
 */

// Example 1
var menuPrices: [String : Double] = ["Pizza" : 12.99, "Salad" : 6.99]
print(menuPrices)

print(menuPrices["Pizza"]!)
//print(menuPrices["Pizza"] ?? "Not found")

// Example 2
var stock: [String : Int] = ["Burger" : 5, "Soup" : 3]
stock["Soup"] = 4 // Update the valur for Soup
print(stock)

// Example 3
var ingredients: [String : Int] = ["Tomato" : 3, "Cheese" : 2]
ingredients["Lettuce"] = 4 // Adding Lettuche in ingredients
print(ingredients)

// For
for ingredient in ingredients {
    print(ingredient)
}

// ingredient, price
for (key, value) in ingredients {
    print(key, value)
}
