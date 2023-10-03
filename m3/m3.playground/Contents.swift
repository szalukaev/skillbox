import Foundation
//task 1
func nextNumber(_ number: Int) -> Int {
    let next = number + 1
    return next
}

print (nextNumber(6))

//task 2
func getSquare(_ number: Int) -> Int {
    let square = number * number
    return square
}
    
let value = getSquare(3)
print(value)

//task3
func lessTime (_ inseconds: Int) -> (minutes: Int, seconds: Int){
    let resultTime:(minutes: Int, seconds: Int)
    resultTime.minutes = inseconds / 60
    resultTime.seconds = inseconds % 60
    
    return resultTime
}
var x = 70 // задайте количество секунд для рассчета
let formatTime: String = String(lessTime(x).minutes) + " мин. и " + String(lessTime(x).seconds) + " секунд"
print (formatTime)

//task 4
func newString (_ string1:String, _ string2:String) -> String {
    let kontrString = string1 + string2
    return kontrString
}

let string1 = "Writing Swift code "
let string2 = "is interactive and fun"

print (newString(string1, string2))

//task 5
func formateToDate (_ string1:String) -> Date{
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    let someDate = formatter.date(from: string1) ?? Date()
    return someDate
}

print (formateToDate("2004-11-23"))
