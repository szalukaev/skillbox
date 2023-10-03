import UIKit
import Foundation

//task 1
struct Person {
    var name: String
    var age: Int
    func getAgeComparisonString(_ p: Person) -> String {
        var st:String = ""
        if self.age > p.age {
            st = p.name + " старше меня"
        }
        if self.age < p.age {
            st = p.name + " младше меня"
        }
        if self.age == p.age {
            st = p.name + " такого же возраста, как и я"
        }
        return st
    }
}
print ("\ntask 1")
let p1 = Person (name:"Антон", age:24)
let p2 = Person (name:"Андрей", age:36)
let p3 = Person (name:"Ольга", age:24)

print (p1.getAgeComparisonString(p2))
print (p2.getAgeComparisonString(p1))
print (p1.getAgeComparisonString(p3))

//task 2
struct Person_task2 {
    var name: String
    var age: Int
    lazy var info: String = {
        name + " " + String (age) + " года / лет"
    }()
    func getAgeComparisonString(_ p: Person_task2) -> String {
        var st:String = ""
        if self.age > p.age {
            st = p.name + " старше меня"
        }
        if self.age < p.age {
            st = p.name + " младше меня"
        }
        if self.age == p.age {
            st = p.name + " такого же возраста, как и я"
        }
        return st
    }
}
print ("\ntask 2")
var p1_task2 = Person_task2(name:"Антон", age:24)
print (p1_task2.info)

var p2_task2 = Person_task2(name:"Андрей", age:36)
print (p2_task2.info)

//task 3
class Hero {
    var lifeCount: Int = 5
    init (){}
    func hit () -> Int{
        lifeCount = lifeCount - 1
        return lifeCount
    }
}
print ("\ntask 3")
let hero = Hero ()
print(hero.hit())
print(hero.hit())
print(hero.hit())

//task 4
class Hero_task4 {
    var lifeCount: Int = 3
    
    var isLive: Bool{
        lifeCount > 0
    }
    init (){}

    func hit () -> Int{
        lifeCount = lifeCount - 1
        return lifeCount
    }
}
print ("\ntask 4")
let hero_task4 = Hero_task4 ()
print(hero_task4.hit())
print (hero_task4.isLive)
print(hero_task4.hit())
print (hero_task4.isLive)
print(hero_task4.hit())
print (hero_task4.isLive)

//task 5
class Hero_task5 {
    private var lifeCount: Int = 5
    init (){}
    func hit () -> Int{
        lifeCount = lifeCount - 1
        return lifeCount
    }
}
print ("\ntask 5")
let hero_task5 = Hero ()
print(hero_task5.hit())
print(hero_task5.hit())
print(hero_task5.hit())


//task 6
class Hero_task6 {
    var lifeCount: Int = 5
    init (){}
    func hit () -> Int{
        lifeCount = lifeCount - 1
        return lifeCount
    }
}
class SuperHero: Hero_task6 {
    override func hit() -> Int {
        return self.lifeCount
    }
}

print ("\ntask 6")
let hero_task6 = SuperHero ()
print(hero_task6.hit())
print(hero_task6.hit())
print(hero_task6.hit())
