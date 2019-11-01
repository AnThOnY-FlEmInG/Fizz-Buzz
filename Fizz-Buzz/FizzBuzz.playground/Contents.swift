//: Playground - noun: a place where people can play

import UIKit

var oneHundredFiveNumber = [Int]()
for num in 1...105 {
    oneHundredFiveNumber.append(num)
}

for num in oneHundredFiveNumber {
    if num % 3 == 0 && num % 5 == 0 && num % 7 == 0 {
        print ("\(num) fizz-buzz-bang")
        
    } else if num % 15 == 0 {
        print ("\(num) fizzbuzz")
    
    } else if num % 3 == 0 {
        print("\(num) Fizz")
        
    } else if num % 5 == 0 {
        print("\(num) Buzz")
        
    } else if num % 7 == 0 {
        print ("\(num) Bang")
        
    } else {
        print (num)
    }
}

