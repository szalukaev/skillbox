import Foundation
import UIKit

//task 1
func compareNumber (_ number1:Double, _ number2:Double) {
    if number1 == number2 {
        print("Равно")
    }
    else if number1 > number2 {
        print("Больше")
    }
    else {
        print("Меньше")
    }
}
var number1 = 7.25
var number2 = 8.00
compareNumber(Double(number1), Double(number2))

//task2
func returnNumber (_ strNumber:String) -> Int {
    if let value = Int(strNumber){
        if (value < 1) || (value > 100) {
            print("\(value) вне диапазона")
        } else {
            print(value)
        }
        return value
    }
    else {
        print("Ошибка")
        return -1
    }
}

var stringInput = "5"
returnNumber(stringInput)

//task 3
func findLargestNum (_ array:[Int]){
    var maxNum = array[0]
    for num in array {
        if maxNum < num {
            maxNum = num
        }
        }
    
    print(maxNum)
}

findLargestNum([4, 5, 1, 3])
findLargestNum([300, 200, 600, 150])
findLargestNum([1000, 1001, 857, 1])

//task 4
func diceRoll (_ number:Int) {
    switch number {
    case 1, 2, 3:
        print("Пройгрыш")
    case 4, 5, 6:
        print("Победа")
    default:
        print("У кубика только 6 граней!?")
    }
}

let diceNumber: Int = 99
diceRoll(diceNumber)
