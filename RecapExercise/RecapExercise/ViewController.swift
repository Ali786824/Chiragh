//
//  ViewController.swift
//  RecapExercise
//
//  Created by Liyaqat Alikhan on 9/7/21.
//

import UIKit
/* topics finshed
 the basics
 basic operators
 strings and characters
 collection types
 control flow(little bit)
 functions
 enums
 structures and classes
 properties
 optional chaining
 tableview
 
 1. Exercise
 create four functions add, substract, multiply divide and take two parameters and give results
 2. Exercise
 print table of 5 till 10 try do it in function. try to make it dynamic by calling the function
 3.
 
 */

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let result = addtionOfTwoNumbers(numa: 12, numb: 13)
        print(result)
        let resultOfSubstraction = substractionOfTwoNumbers(numa: 100, numb: 32)
        print(resultOfSubstraction)
        let resultOfMultiplication = multiplicationOfTwoNumbers(numa: 32, numb: 43)
        print(resultOfMultiplication)
        let resultOfDivision = divisionOfTwoNumbers(numa: 180, numb: 90)
        print(resultOfDivision)
    }
    
    func addtionOfTwoNumbers(numa: Int, numb: Int) -> Int {
        return numa+numb
    }
    func substractionOfTwoNumbers(numa: Int, numb: Int) -> Int {
        return numa-numb
    }
    func multiplicationOfTwoNumbers(numa: Int, numb: Int) -> Int {
        return numa*numb
    }
    func divisionOfTwoNumbers(numa: Int, numb: Int) -> Int {
        return numa/numb
    }
    
}
func addTwoParams(number1: Int, number2: Int) {
    var result = number1 + number2
    for word in result {
        
        
    }
    
    print(result)
}

    


