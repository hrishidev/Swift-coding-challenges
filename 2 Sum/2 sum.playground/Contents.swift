import Foundation


func findTwoSum( inputArray: [Int] , sum : Int) -> Bool {
    
    var lowerIndex = 0
    var higherIndex = inputArray.count - 1
    
    while lowerIndex < higherIndex {
        
        let currentIndiceSum = inputArray[lowerIndex] + inputArray[higherIndex]
        
        if currentIndiceSum == sum {
            print( "Sum of \(inputArray[lowerIndex]) and \( inputArray[higherIndex]) = \(sum)")
            return true
        }

        if currentIndiceSum > sum {
            higherIndex = higherIndex - 1
        }
        
        if currentIndiceSum < sum {
            lowerIndex = lowerIndex + 1
        }
    }
    
    
    return false
}


func findPair(In array : [Int]) -> Bool {
    
    let arraySum = array.reduce(0 , + )
    return findTwoSum(inputArray: array, sum: arraySum/2)
    
}

let array = [ 2, 3, 4, 4, 7, 8, 9, 10, 12, 14, 21, 22, 100 ]


//Check if there exist two elements in an array whose sum is equal to the sum of rest of the array
findPair(In:array)



