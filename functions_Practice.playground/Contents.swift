import UIKit

func areaOfRectangle(length: Int, breadth: Int) -> Int {
    return length*breadth
}
areaOfRectangle(length: 30, breadth: 50)

func areaOfCircle(radius: Double) ->Double {
    return Double.pi*radius*radius
}
areaOfCircle(radius: 28.6)

enum Country {
    case UnitedStates
    case Mexico
    case India
    case NetherLands
}

func CountryName(country: Country) -> String {
    
    
    
    switch country {
    case .UnitedStates:
        return "USD"
    case .Mexico:
        return "MEX"
    case .India:
        return "INR"
    case .NetherLands:
        return "NLR"
    }
}

CountryName(country: .India)
CountryName(country: .Mexico)
CountryName(country: .NetherLands)

//Dictionary
let ali : [String] = []
var khan: [Int] = [1,2,3]
khan.append(4)

khan[2] = 4
khan.append(5)
khan[4] = 6
print(khan)

func Hello(fName: String, lName: String) -> String {
    return fName+lName
}
Hello(fName: "Liyaqat", lName: "Khan")

func SomeFunction(a: Any, b: Int, c: String, d: Double) -> Any
{
    return a
}
func hello(country: Country) {
    print(country)
}
//create a dictionary in the function as parameter and print only the keys
//learn struct and classes and dictinaries 
 
let animalDictionary: [String: Int] = ["Mohan": 23, "Krishna": 32, "Ajay": 44, "Vijay": 76]

func animal(X:[String: Int]) {
    let dictKeys = [String](X.keys)
    let dictValues = [Int](X.values)
    for item in dictKeys {
        print("\(item)")
    }
}
animal(X: animalDictionary)


  
