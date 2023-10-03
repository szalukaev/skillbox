import UIKit
import Foundation




//task 1
func summArray (_ array: [Int], _ summCount: Int) -> Int{
    if array.isEmpty { // массив не пустой, а если пустой то возвращаем просто ноль
        return 0
    } else if array.count < summCount { // размер массива менее заданного
        var array2 = array
        while array2.count < summCount {
            array2.append(0)
        }
            var summ:Int = 0
            for i in 0...(summCount - 1){
                summ += array2[i]
            }
            return summ

    }
    // массив удовлетворяет требованиям
    var summ:Int = 0
    for i in 0...(summCount - 1){
        summ += array[i]
    }
    return summ

}
var arrayNumbers:[Int] = [1,4,2,5,6] // массив значений
print (summArray(arrayNumbers, 2)) // передаем массив в функцию и указываем какое колличество ПЕРВЫХ элементов массива сложить



//task 2
func newArrayFirstAndlast (_ arr: [Int]) -> [Int]? {
    guard arr.count >= 2 else {
        return nil
    }
    let newArray: [Int]? = [arr[0]] + [arr[arr.count - 1]]
    return newArray
}
var arrayNumbers2: [Int] = [1,4,2,5,6] // массив значений
print(newArrayFirstAndlast(arrayNumbers2))



//task 3
let sortingVar:(Double) -> Bool = {$0 < 5}
let array = [1.5, 10, 4.99, 2.30, 8.19]
let filtred = array.filter(sortingVar)
print(filtred)



//task 4
func dateToString (_ array:[Date]) -> [String]{
    var newArray: [String] = []
    for i in array {
        newArray += [formatter.string(from: i)]
    }
    return newArray
}
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
let arrayDate: [Date] = [formatter.date(from: "2016-12-22 08:00:00")!, formatter.date(from: "2017-12-22 08:00:00")!, formatter.date(from: "2018-12-22 08:00:00")!]
print(dateToString (arrayDate))



//task 5
let newArrayDate = arrayDate.map({formatter.string(from: $0)})
print(newArrayDate)

//task 6
let firstSet: Set = [5,7,8,9,11,13]
let secondSet: Set = [2,3,5,7]
print(firstSet.intersection (secondSet))
