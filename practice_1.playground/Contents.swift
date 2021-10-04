import UIKit
/*
let a = 10
let b = 10

let x = a == b // it will true
print(x)
*/

//let name = "world"
//
//let boolCondition = name == "world"
//
//func testBool() -> Bool {
//    return true
//}
//
//if boolCondition {
//    print("hello, world ----")
//
//    let x = 5
//    print(x)
//} else {
//    print("I'm sorry \(name), but I don't recognize you")
//}
//
//boolCondition ? {
//    print("Hello World 123123")
//    let x = 5
//    print(x)
//}() : print("I'm sorry \(name), but I don't recognize you")
//let contentHeight = 40
//let hasHeader = true
//let rowHeight = contentHeight + (hasHeader ? 50 : 20)
//
//if hasHeader == true {
//    let rowHeight = contentHeight + 50
//    print(rowHeight)
//
//} else {
//    let rowHeight = contentHeight + 20
//    print(rowHeight)
//}
//
////if and unwrapping
//let convertedNumber = "Ali"
//if convertedNumber != nil {
//    print("It contains some integer value \(convertedNumber).")
//}
//
////Optional Binding
//let possibleNumber = "123"
//if let actualNumber = Int(possibleNumber) {
//    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
//} else {
//    print("The string \"\(possibleNumber)\" couldn't be converted to an integer")
//}
//
//
//
//
//
////example two
//if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
//    print("\(firstNumber) < \(secondNumber) < 100")
//}
//// Prints "4 < 42 < 100"
//
//if let firstNumber = Int("4") {
//    if let secondNumber = Int("42") {
//        if firstNumber < secondNumber && secondNumber < 100 {
//            print("\(firstNumber) < \(secondNumber) < 100")
//        }
//    }
//}
// Implicitly forced unwrapped
//let possibleString: String? = "An optional string."
//let forcedString: String = possibleString! // requires an exclamation point
//
//let assumedString: String! = "An implicitly unwrapped optional string."
//let implicitString: String = assumedString // no need for an exclamation point
// example 2

//let optionalString = assumedString // you get an error here because it was not unwrapped being an optional
//// The type of optionalString is "String?" and assumedString isn't force-unwrapped.

//example 3
//let assumedString: String! = "An implicitly unwrapped optional string."
//if assumedString != nil {
//    print(assumedString!)
//}

//Error handling
func canThrowAnError() throws {
    // this function may or may not throw an error
}

//example 2
//do {
//    try canThrowAnError()
//    // no error was thrown
//} catch {
//    // an error was thrown
//}

//example 3
/*
func makeASandwich() throws {
    // ...
}

do {
    try makeASandwich()
    eatASandwich()
} catch SandwichError.outOfCleanDishes {
    washDishes()
} catch SandwichError.missingIngredients(let ingredients) {
    buyGroceries(ingredients)
}
*/
func greeting(name: String) {
    print("Welcome to iOS \(name)")
}
greeting(name: "Ali")

func multiply(a: Int, b: Int) -> Int {
    let c = a * b
    return c
}
let d = multiply(a: 5, b: 10)
print(d)

func displayname(firstName: String, lastName: String) -> String  {
    let newName = lastName + " , " + firstName
    return newName
}
let home = displayname(firstName: "Arun", lastName: "kumar")
print(home)

var ali:[Int] = []
var khan:[String] = ["Arun", "Rishi", "Sushant"]


func areaOfCircle(r: Double) -> Double {
    var circle = 3.14 * r * r
    return circle
}
let calculatedArea = areaOfCircle(r: 5.5)
print("area of is \(calculatedArea)")

class name {
    var first: String
    var second: String
    
    init() {
        first = ""
        second = ""
        
    }
    init(name: String) {
        first = name
        second = name
    }
    init(n1: String, n2: String) {
        first = n1
        second = n2
    }
    func getDisplayName() -> String {
        return first + second
    }
}
var name1 = name()
print(name1.getDisplayName())
var name2 = name(n1: "hangOver", n2: "lite")
print(name2.getDisplayName())

//Multiplication of 5
func multiplicationTable(till limit: Int) {
    print("limit")
    for i in 1...limit {
        for j in 1...limit {
            print(i * j, terminator: "\t")
        }
        print("")
    }
    
}
multiplicationTable(till: 5)

func mulOfFive(till limit: Int) {
    for count in 1...limit {
        print ("5 * \(count) = \(count * 5)")
    }
}
mulOfFive(till: 20)








