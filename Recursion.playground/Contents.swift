//: Playground - noun: a place where people can play

import UIKit


func factorial(n: Int) {
  
  if n > 1 {
    print(n)
    
  } else {
    
    factorial(n: n - 1)
    
  }
}
