import UIKit

// IF - ELSE IF - ELSE

/* ----- SYNTAX -----
 if conditional {
    this block runs if condition 1 is true
 } else if {
    this block runs if condition 2 is true
 } else {
    this block runs if none of the above conditions are true
 }
 */

// ----- EXAMPLE 1 -----
var waterTemp: Int = 125

if waterTemp >= 100 {
    print( "Boiling!" )
} else {
    print("The water is not boiling.")
}

// ----- EXAMPLE 2 -----
var position: Int = 20

if position == 1 {
    print("You came first")
} else if position == 2 {
    print("You came second")
} else if position == 3 {
    print("You came third")
} else {
    print("You finished in position \(position). Keep training!")
}

// ----- EXAMPLE 3 -----
var temperature = 74

if temperature >= 68 && temperature <= 75 {
    print("The temperatura is just right.")
} else {
    print("The temperature is too hot or cold.")
}

// ----- EXAMPLE 4 -----
var mainPower: Bool = false
var batteryPower: Bool = true

if mainPower || batteryPower {
    print("I can use my phone")
} else {
    print("You should find a charger")
}

// ----- Mini Challenge -----
// Show one message if user is VIP, and another if not.
var isVIP: Bool = true

if isVIP {
    print("Welcome VIP!")
} else {
    print("Welcome!")
}

//print(VIP ? "Welcome VIP!" : "Welcome!")

// ----- SWITCH -----
let table: Int = 3
switch table {
case 1: print("You are in the garden")
case 2: print("You are in dining room")
default: print("Please wait to be seated")
}

// Mini Challenge: Create a switch for drink selection.
var idDrink: Int = 2
switch idDrink {
case 1: print("Coca-Cola")
case 2: print("Pepsi")
case 3: print("Fanta")
default: print("Drink not available")
}
