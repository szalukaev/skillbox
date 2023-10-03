import UIKit
import Foundation

//Задание 1
//Объявите три сущности, которые реализует предоставленный вам протокол. После этого для всех сущностей вызовите все методы и свойства, объявленные в протоколе.

protocol CalorieCountProtocol {
     var calories: Int { get }
     func description() -> String
}

struct NutsCalories:CalorieCountProtocol {
    var calories: Int
    var name: String
    
    func description() -> String {
        return String ("\(name) - это орех с каллорийностью \(calories)")
    }
}

class MeatCalories:CalorieCountProtocol {
    var calories: Int
    var name: String
    
    func description() -> String {
        return String ("\(name) - это мясной продукт с калорийностью \(calories)")
    }
    init(name: String, calories: Int){
        self.name = name
        self.calories = calories
    }
    
}
//
enum EggsCalories:CalorieCountProtocol {
    case duck, chicken, ostrich
    var calories: Int {
        switch self {
        case .chicken:
            return 127
        case .duck:
            return 186
        case .ostrich:
            return 118
        }
        }
    func description() -> String {
        switch self{
        case .duck:
            return String ("Это утинное яйцо с каллорийностью \(self.calories)")
        case .chicken:
            return String ("Это куринное яйцо с каллорийностью \(self.calories)")
        case .ostrich:
            return String ("Это страусинное яйцо с каллорийностью \(self.calories)")
        }
    }
}
print ("\nTASK 1\n")
//Работа со структурой по контракту CalorieCountProtocol
let nut = NutsCalories(calories: 622, name: "Арахис")
print (nut.description())
//Работа с классом по контракту CalorieCountProtocol
let meat = MeatCalories(name: "Азу", calories: 214)
print (meat.description())
//Работа с перечислением по контракту CalorieCountProtocol
let duckEgg = EggsCalories.duck
print(duckEgg.description())
let chickenEgg = EggsCalories.chicken
print(chickenEgg.description())
let ostrichEgg = EggsCalories.ostrich
print(ostrichEgg.description())



//Задание 2
//Поработайте с протоколом Equatable, который нужен для сравнения сущностей.
//
//Вам предоставлены структура и класс, которые нужно сравнить. Добавьте в объявление этих сущностей протокол Equatable. При необходимости реализуйте недостающий метод.

enum BalanceType {
    case positive, negative, neutral
}

struct Balance:Equatable {
    let type: BalanceType
    let amount: Int
}

class BalanceObject{
    var amount: Int = 0
}

//Расширение которое подготавливает функцию сравнения определяя какие элементы в структуре и классе сравнивать между собой учитывая что набор свойств разный
extension BalanceObject:Equatable{
    static func == (lhs: BalanceObject, rhs: BalanceObject) -> Bool {
        lhs.amount == rhs.amount
        }
    static func == (lhs: Balance, rhs: BalanceObject) -> Bool {
        lhs.amount == rhs.amount
        }
    static func == (lhs: BalanceObject, rhs: Balance) -> Bool {
        lhs.amount == rhs.amount
        }
}
print ("\nTASK 2\n")
let balanceObject = BalanceObject()
let balance = Balance(type: .positive, amount: 4)
print("Сущности - " + (balanceObject == balance ? "Ровны":"НЕ равны"))

//Задание 3
//Вам дан протокол и три сущности, которые его реализуют. Добавьте в протокол новый метод. Реализуйте этот метод с помощью расширения протокола. Создайте массив из этих сущностей и вызовите в цикле новый метод у каждого элемента массива.

protocol Dog {
    var name: String { get set }
    var color: String { get set }
}

struct Haski: Dog {
    var name: String
    var color: String
}

class Corgi: Dog {
    var name: String
    var color: String

    init(name: String, color: String) {
        self.name = name
        self.color = color
    }
}

struct Hound: Dog {
    var name: String
    var color: String
}

extension Dog{
    func speak() -> String{
        return String ("Собака по кличке \(self.name) говорит - Гав")
    }
}

var dogs: [Dog] = []
print ("\nTASK 3\n")
dogs.append(Haski(name: "Boomer", color: "Grey"))
dogs.append(Corgi(name: "Prince", color: "Brown"))
dogs.append(Hound(name: "Luky", color: "Gold"))

for value in dogs {
    print (value.speak())
}
