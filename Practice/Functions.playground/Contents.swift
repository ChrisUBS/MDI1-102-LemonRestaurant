import UIKit

/*
 func functionName(parameterName: DataType) -> DataType{
 
    this is the body of the function
 
 }
 */

// ----- EXAMPLE 1 -----
func greet(person: String) -> String {
    return "Hello, \(person)!"
}

// function call
let message = greet(person: "Chris")
print(message)

// ----- EXAMPLE 2 -----
func greeting(person: String, formally: Bool = false) -> String {
    if formally {
        return "Greeting, \(person)!"
    } else {
        return "Hi \(person)!"
    }
}

print(greeting(person: "Chris", formally: true))
print(greeting(person: "Sam", formally: false))

// ----- EXAMPLE 3 -----
func calculateTotal(price: Double, quantity: Int) -> Double {
    return price * Double(quantity)
}

print(calculateTotal(price: 10.0, quantity: 2))

// mini-ex: Create a function deliveryTime(minutes: Int) that returns "Ready in X minutes".
func deliveryTime(minutes: Int) -> String{
    return "Ready in \(minutes) minutes"
}

print(deliveryTime(minutes: 10))

// mini-ex: Create a function to calculate price + tax and show result.
func calculatePriceWithTax(price: Double, tax: Double) -> Double {
    return price + (price * tax)
}

print(calculatePriceWithTax(price: 10, tax: 0.20))

/*
 mini-ex: Create a function applyDiscount(price: Double, discount: Double)
 that receives the original price and a discount percentage, and returns the
 final price after applying the discount.
 */

func applyDiscount(price: Double, discount: Double) -> Double {
    let discountAmount = price * discount
    return price - discountAmount
}

print(applyDiscount(price: 100, discount: 0.25))
