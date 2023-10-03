import UIKit
import Foundation

//Дополнительные задачи:
//
// 1. Создать массив чисел и любое число.
//
// Проверить есть ли это число в массиве.
//
// Если число есть, то вывести в консоль строку "Присутствует", если нет - "Отсутствует".
//
// 2. Создать массив строк и любую строку.
//
// Проверить есть ли эта строка в массиве.
//
// Если строка есть, то вывести в консоль строку "Присутствует", если нет - "Отсутствует".
//
// 3. Создать массив строк и любую строку.
//
// Если строка в массиве есть, то вывести в консоль индекс этой строки в массиве.
//
// 4. Создать массив чисел.
//
// Если число из массива делится на 3, то вывести в консоль строку "Число \(значение числа) делится на 3".
//
// 5. Создать массив чисел.
//
// Если число из массива делится на 2, то вывести в консоль строку "Число \(значение числа) делится на 2", а если делится и на 2 и на 5, то вывести в консоль строку "Число \(значение числа) делится на 2 и на 5".
//
// 6. Создайте массив чисел и найдите произведение всех чисел в нем.
//
// 7. Создайте массив с отрицательными и положительными числами и найдите сумму только положительных чисел.
//
// 8. Создайте массив имен и выведет в консоль каждый элемент с его индексом.
//
// 9. Создайте массив чисел.
//
// Найдите сумму всех чисел по правилам:
//
// - если число входит в промежуток от 0 до 100, то умножьте это число на два
//
// - от 100 до 200, на 3
//
// - от 200 до 300, на 4
//
// - в остальных случаях число оставьте неизменным.
//
// Интервалы нестрогие, то есть правая граница не включается.
//
// Например, для интервала от 200 до 300, число 300 не включается.
//
//
//
//Нельзя использовать встроенные функции массива, кроме enumerated().
//
//Используйте везде циклы и условия.


//task 1
var arrayOfNumbers = [1, 2, 3 ,5 ,-4 ,6 ,10, -2]
var numberOfTest = 31
var numberInValue = "Отсутсвует"

for value in arrayOfNumbers {
    if value == numberOfTest {
        numberInValue = "Присутствует"
        break
    }
}
print(numberInValue)

//task 2
var arrayOfStrings = ["Строка 1", "Строка 2", "Строка 3","Строка 4","Строка 5","Строка 6"]
var stringOfTest = "Строка 1"
var stringInValue = "Отсутсвует"

for value in arrayOfStrings {
    if value == stringOfTest {
        stringInValue = "Присутствует"
        break
    }
}
print(stringInValue)

//task 3
for (index, value) in arrayOfStrings.enumerated() {
    if value == stringOfTest {
        print("Индекс - \(index)")
        break
    }
}

//task 4
for value in arrayOfNumbers {
    if value % 3 == 0 {
        print("Число \(value) делиться на 3")
    }
}

//task 5
for value in arrayOfNumbers {
    if value % 2 == 0 {
        if value % 5 == 0 {
            print("Число \(value) делиться на 2 и на 5")
        } else {
            print("Число \(value) делиться на 2")
        }
    }
}

//task 6
var multiplyAllNumbers: Double = 1
for value in arrayOfNumbers {
    multiplyAllNumbers = multiplyAllNumbers * Double (value)
}
print ("Произведение всех чисел массива равно - \(multiplyAllNumbers)")

//task 7
var sumPositiveNumber = 0
for value in arrayOfNumbers {
    if value > 0 {
        sumPositiveNumber += value
    }
}
print ("Сумма всех положительных чисел массима равна - \(sumPositiveNumber)")

//task 8
var arrayOfNames = ["Иван", "Петр", "Александр", "Евлампий"]
for (index, value) in arrayOfNames.enumerated() {
    print("Имя - \(value). Индекс - \(index)")
}

//task 9
var newArrayOfNumbers = [1, 30, 100, 190, 300, 205]
var sumArray = 0
for value in newArrayOfNumbers {
    if (value >= 0) && (value < 300) {
        if value < 100 {
            sumArray += value * 2
        }
        if (value >= 100) && (value < 200) {
            sumArray += value * 3
        }
        if (value >= 200) && (value < 300) {
            sumArray += value * 4
        }
    } else {
        sumArray += value
    }
}
 print("Сумма массива - \(sumArray)")
