
import Foundation

// FIZZBUZZ a list of numbers and print Fizz when divisible by 3, Buzz when divisible by 5, and FizzBuzz when divisible by both 3 and 5

let number = [2,5,8,15,345,6,7,78,89,9]

for num in number {
    if num % 15 == 0 {
        print("FizzBuzz: \(num)")
    } else if num % 3 == 0 {
        print("Fizz: \(num)")
    } else if num % 5 == 0 {
        print("Buzz: \(num)")
    } else {
        print("num")
    }
}

for n in 1...100 {
    switch n {
    case n where (n % 3 == 0) && (n % 5 == 0):
        print("FizzBuzz: \(n)")
    case n where (n % 3 == 0):
        print("Buzz: \(n)")
    case n where (n % 5 == 0):
        print("Fizz: \(n)")
    default:
        print(n)
    }
}

func fizzbuzz (number: [Int]) {
    for n in number {
    
        switch n {
        case n where (n % 3 == 0) && n % 5 == 0:
            print("FizzBuzz")
        case n where (n % 3 == 0):
            print("Fizz")
        case n where (n % 5 == 0):
            print("Buzz")
        default:
            print(n)
        }
    }
}

fizzbuzz(number: [3,4,6,7,4,3,2])

let values = [7,8,9,9,35,67,89,0,97]

func fizzbuzz(array: [Int]) {
    for n in array {
        switch n {
        case n where (n % 3 == 0) && (n % 5 == 0):
            print("fizzbuzz")
        case n where (n % 3 == 0):
            print("fizz")
        case n where (n % 5 == 0):
            print("buzz")
        default:
            print(n)
        }
    }
}


func fizzbuzz2(array: [Int]) {
    for n in array {
        switch n {
        case n where (n % 3 == 0) && (n % 5 == 0):
            print("fizzbuzz")
        case n where (n % 3 == 0):
            print("fizz")
        case n where (n % 5 == 0):
            print("buzz")
        default:
            print(n)
        }
    }
}

fizzbuzz2(array: [5,6,7,8,9,10])

func fizzbuzz(fizz: [Int]) {
    for i in fizz {
        switch i {
        case i where (i % 3 == 0) && (i % 5 == 0):
            print("fizz buzz")
            
        case i where i % 3 == 0:
            print("fizz")
        case i where i % 5 == 0:
            print("buzz")
        default:
            print(i)
        }
    }
}

