import UIKit

var greeting = "Hello, playground"

func sum(num1: Int, num2: Int) -> Int {
    let result = num1 + num2
    return result
}

func subtraction(num1: Int, num2: Int) -> Int {
    let result = num1 - num2
    return result
}

func multiply(num1: Int, num2: Int) -> Int {
    let result = num1 * num2
    return result
}

func split(num1: Int, num2: Int) -> Double {
    let result = Double(num1) / Double(num2)
    return result
}

let splitNum = split(num1: 65, num2: 8)

print(splitNum)
