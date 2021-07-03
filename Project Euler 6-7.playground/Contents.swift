import UIKit

//6

func sumOfSquares(lowerBound:Int,upperBound:Int) -> Int {
    var result = 0
    for number in (lowerBound...upperBound) {
        result += number*number
    }
    return result
}

func squareOfSum(lowerBound:Int,upperBound:Int) -> Int {
    var result = 0
    for number in (lowerBound...upperBound) {
        result += number
    
    }
    return result*result
}

func differenceOfSquareOfSumAndSumOfSquare(lowerBound:Int,upperBound:Int) -> Int {
    return squareOfSum(lowerBound: lowerBound, upperBound: upperBound) - sumOfSquares(lowerBound: lowerBound, upperBound: upperBound)
}

//7

func isPrime(number: Int) -> Bool{
    var result = true
    if(number <= 2){
        return result
    }
    for n in 2...number-1 {
        if(number % n == 0){
            result = false
        }
    }
    return result
}

func find100001thPrimeNumber() -> Int{
    var counter = 0
    var number = 2
    while counter < 10001 {
        number += 1
        if isPrime(number: number) {
            counter += 1
            print(number)
        }
        
    }
    return number
    
}
