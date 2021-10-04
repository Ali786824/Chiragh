import UIKit

let names = ["Anna", "Alex", "Brian", "Jack"]
for ali in names {
    
}

let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}


for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")


//optional chaining
class Person {
    var residence: Residence?
}
class Residence {
    var numberOfRooms = 1
}
let john = Person()

//let roomCount = john.residence!.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has\(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}
//Prints "Unable to retrieve the number of rooms."
john.residence = Residence()

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
    }

//Defining Modal class for optional chaining
class Person1 {
    var residence1: Residence1?
}
class Residence1 {
    var rooms: [Room] = []
    var numberOfRooms1: Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return rooms[i]
        }
        set {
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms1)")
    }
    var address: Address?
}

//arrays practice and Dictionary practice
var someInts: [Int] = []
someInts.append(3)
//someInts contains 1 value now type Int
someInts = []
// SomeInts is now an empty aaray, but is still of tyep [Int]

//creating an array with default value
var threeDoubles = Array(repeating: 0.0, count: 3)
//threedoubles is of type [double], and equals [0.0, 0.0, 0.0]

//creating an array by adding two arrays together
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)
//anotherThreeDoubles is of type [Double], and equals [2.5, 2.5, 2.5]

var sixDoubles = threeDoubles + anotherThreeDoubles
// six doubles is inferred as [Double], and equals [0.0, 0.0, 0.0, 2.5, 2.5, 2.5]

//creating an array with an array literal

var shppingList: [String] = ["Eggs", "Milk"]
//shoopingList has been initialised with two initial items
var shoppingList = ["Eggs", "Milk"]

//Accessing and modifying an array
print("The shopping list contains \(shoppingList.count) items.")
//shopping list contains two items

//boolean isEmpty property as a shortcut for checking wheather the county property is equal to 0
if shoppingList.isEmpty {
    print("The shopping list is emplty.")
} else {
    print("The shopping list is not empty.")
}
//prints the shopping list is not empty
shoppingList.append("Flour")
//it has 3 items now
// use of (+=) we use in case of append
shoppingList += ["Baking Powder"]
//it has 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
//it has 7 items now
var firstItem = shoppingList[0]
//the first item in the list is nowequal to six eggs than eggs

shoppingList[4...6] = ["Bananas", "Apples"]
//it contains 6 items now
shppingList.insert("Maple", at: 0)
//it contains 7 items
// Maple syrap is the first item in the list
let mapleSyrup = shppingList.remove(at: 0)
//it has 6 items
firstItem = shppingList[0]
//fisrt item is now six eggs
let apples = shppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string

//iterating Over an array
//You can iterate over the entire set of values in an array with the for-in loop:
for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas

//If you need the integer index of each item as well as its value, use the enumerated() method to iterate over the array instead.
for(index, value) in shppingList.enumerated() {
    print("Item \(index+1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas
