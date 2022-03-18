import UIKit
import Foundation
import Darwin

//Создаем класс Animal
class Animal{
    var energy:Int
    var weight:Int
    var age = 0
    var maxAge: Int
    var name: String
    var isTooOld: Bool{
        age >= maxAge
    }
    //Функция сна у животного
    func sleep(){
        if isTooOld {
            print("Животное слишком старое для сна. Параметры \(name): Энергия - \(energy), Вес - \(weight), Возраст - \(age), Максимальный возраст - \(maxAge) \n")
        }
        else{
            energy += 5
            age += 1
            print("\(name) спит \n")
        }
    }
    //Функция питания у животного
    func eating(){
        if isTooOld{
            print("Животное слишком старое для еды. Параметры \(name): Энергия - \(energy), Вес - \(weight), Возраст - \(age), Максимальный возраст - \(maxAge) \n")
        }
        else{
            energy += 3
            weight += 1
            print("\(name) ест \n")
        }
    }
    //Функция передвижения у животного
    func walk(){
        if !isTooOld && (energy + -5) > 0 && (weight + -1) > 0{
            energy += -5
            weight += -1
            print("\(name) передвигается \n")
        }
        else{
            print("\(name) не может двигаться. Не хватает сил или слишком стар. \n")
        }
    }
    //Функция случайного изминения возраста
    private func tryIncrementAge(){
        if Bool.random() && !isTooOld {
            age += 1
        }
    }
    //Функция создания потомства
    func descendantAnimal() -> Animal {
        let babyAnimalEnergy = Int.random(in: 1...10)
        let babyAnimalWeight = Int.random(in: 1...5)
        print("\(name) создал потомство. Параметры потомства \(babyAnimalWeight), \(babyAnimalEnergy)")
        return Animal(babyAnimalEnergy, weight: babyAnimalWeight,maxAge: maxAge, name: name)
    }
    
    func info(){
            print("\(name): Энергия - \(energy), Вес - \(weight), Возраст - \(age), Максимальный возраст - \(maxAge), Слишком стар - \(isTooOld ? "Да":"Нет")\n")
    }
    
    init(_ energy:Int, weight:Int, maxAge:Int, name: String) {
        self.energy = energy
        self.weight = weight
        self.maxAge = maxAge
        self.name = name
    }
}

//Создание класса Bird
class Bird: Animal {
    
    override func walk() {
        super.walk()
        print("\(name) летит \n")
    }
    
    override func descendantAnimal() -> Animal {
        let babyBirdEnergy = Int.random(in: 1...10)
        let babyBirdWeight = Int.random(in: 1...5)
        print("\(name) создал потомство - птичку. Параметры потомка: Энергия - \(babyBirdEnergy), Вес - \(babyBirdWeight) \n")
        return Bird(babyBirdEnergy, weight: babyBirdWeight, maxAge: maxAge, name: name)
    }
}

//Создание класса Fish
class Fish: Animal {
    
    override func walk() {
        super.walk()
        print("\(name) плывет \n")
    }
    
    override func descendantAnimal() -> Animal {
        let babyFishEnergy = Int.random(in: 1...10)
        let babyFishWeight = Int.random(in: 1...5)
        print("\(name) создал потомство - птичку. Параметры потомка: Энергия - \(babyFishEnergy), Вес - \(babyFishWeight)\n")
        return Fish(babyFishEnergy,weight: babyFishWeight,maxAge: maxAge,name: name)
    }
}

//Создание класса Dog
class Dog: Animal {
    
    override func walk(){
        super.walk()
        print("\(name) бежит \n")
    }
    
    override func descendantAnimal() -> Animal {
        let babyDogEnergy = Int.random(in: 1...10)
        let babyDogWeight = Int.random(in: 1...5)
        print("\(name) создал потомство - птичку. Параметры потомка: Энергия - \(babyDogEnergy), Вес - \(babyDogWeight) \n")
        return Dog(babyDogEnergy, weight: babyDogWeight, maxAge: maxAge, name: name)
    }
}

//Создание класса зоопарк
class NatureReserve{
    public var animals: [Animal] = [] //Массив животных
    
    init(_ animalCount:Int,_ birdCount:Int,_ fishCount:Int,_ dogCount:Int) {
        var i:Int = 1
        
        while (i <= animalCount){
            self.animals.append(Animal(Int.random(in: 1...15), weight: Int.random(in: 1...10), maxAge: Int.random(in: 1...5), name: "Animal №" + String(i)))
            i += 1
        }
        i = 1
        while (i <= birdCount) {
            self.animals.append(Bird(Int.random(in: 1...15),weight: Int.random(in: 1...10),maxAge: Int.random(in: 1...5),name: "Bird №" + String(i)))
            i += 1
        }
        i = 1
        while (i <= fishCount) {
            self.animals.append(Fish(Int.random(in: 1...15),weight: Int.random(in: 1...10),maxAge: Int.random(in: 1...5),name: "Fish №" + String(i)))
            i += 1
        }
        i = 1
        while (i <= dogCount) {
            self.animals.append(Dog(Int.random(in: 1...15),weight: Int.random(in: 1...10),maxAge: Int.random(in: 1...5),name: "Dog №" + String(i)))
            i += 1
        }
    }
    
    //Функция случайного действия
    func randomAction(_ numberOfItreaction:Int){
        
        for n in 1...numberOfItreaction{
        print("Количество животных в начале итерации - \(animals.count) | Итерация \(n)")
        print("__________________________________________________________________________\n")
        
        for value in animals {
            let randomCase = Int.random(in: 1...4)
            
            switch randomCase {
            case 1: value.walk()
            case 2: value.eating()
            case 3: value.sleep()
            case 4: animals.append(value.descendantAnimal())
            default:
                print("Ничего")
            }
            
            for (key, number) in animals.enumerated(){
                if animals.count > 0 && number.isTooOld{
                    print("Животное покидает зоопарк: Максимальный возраст животного - \(number.maxAge) - Текущий возраст животного \(number.age)")
                    print("Количество животных - \(animals.count)\n")
                    animals.remove(at: key)
                }
                else if animals.count == 0{
                    print("Все животные умерли\n")
                    break
                }
            }
        }
    }
}
    
func info(){
    for number in animals {
        print("Число животных в заповеднике - \(animals.count)")
        number.info()
    }
}
}
let natureReserve1 = NatureReserve(2, 5, 3, 2) // Количество разных животных на старте

natureReserve1.info()

natureReserve1.randomAction(10) // Количество итераций

print("Количество животных в заповеднике в конце \(natureReserve1.animals.count)")

