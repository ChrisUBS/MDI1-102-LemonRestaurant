import UIKit

/*
 Joined
 
 Used to combine all elements of a string array into a single string,
 placing a custom separator between each element.
 */

let students = ["Ed", "Vonda", "Eduardo", "Tom", "Alexis", "Christian", "Andrew"]
print(students)

print(students.joined(separator: "-"))
print(students.joined(separator: " || "))
print(students.joined(separator: ", "))
print(students.joined(separator: " "))
