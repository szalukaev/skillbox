import UIKit
import Foundation

//task 1
var weekDictionary = [1: "Понедельник", 2: "Вторник", 3: "Среда"]


//task 2
weekDictionary[4] = "Четверг"

//task 3
for (key, value) in weekDictionary {
    print ("\(value) - \(key)")
}

//task 4
enum CustomError: Error, LocalizedError {
    case invalidPassword
    case notFound
    
    public var errorDescription: String? {
        switch self {
        case .invalidPassword:
            return "Неправильный пароль"
        case .notFound:
            return "Ошибка не найдена"
        }
    }
}

//task 5
func throwsError (needsError: Bool) throws {
    guard !needsError else {
        throw CustomError.invalidPassword
    }
    guard needsError else {
        throw CustomError.notFound
    }
}

//task 6
func weTestError (testError: Bool){
    do {
        try throwsError(needsError: testError)
        }
    catch {
        print(error.localizedDescription)
        }
}
weTestError(testError: true)
weTestError(testError: false)


