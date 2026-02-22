import UIKit

func moveZeroesAtTheEnd(_ numbers: inout [Int]) {
    var leftPointer = 0
    for index in 0..<numbers.count {
        print("iteration")
        print("leftPointer -> \(leftPointer)")
        print("rightPointer -> \(index)\n")
        
        if numbers[index] != 0 {
            let temp = numbers[leftPointer]
            numbers[leftPointer] = numbers[index]
            numbers[index] = temp
            leftPointer += 1
        }
    }
}

var numbers: [Int] = [2, 1, 0, 0, 12, 0, 5, 0, 0, 7] // [0, 1, 0, 3, 12]
moveZeroesAtTheEnd(&numbers)
print(numbers)
