//
//  ViewController.swift
//  m11
//
//  Created by Maxim Nikolaev on 07.09.2021.
//

import UIKit

class ViewController: UIViewController {
    var isNewValue = true
    var operation: MathOperation? = nil
    var previousOperation: MathOperation? = nil
    var result: Float = 0.00
    var newValue: Float = 0.00

    @IBAction func onZero(_ sender: Any) {
        addDigit("0")
    }
    
    @IBAction func onOne(_ sender: Any) {
        addDigit("1")
    }
    
    @IBAction func onTwo(_ sender: Any) {
        addDigit("2")
    }
    
    @IBAction func onThree(_ sender: Any) {
        addDigit("3")
    }
    
    @IBAction func onFour(_ sender: Any) {
        addDigit("4")
    }
    
    @IBAction func onFive(_ sender: Any) {
        addDigit("5")
    }
    
    @IBAction func onSix(_ sender: Any) {
        addDigit("6")
    }
    
    @IBAction func onSeven(_ sender: Any) {
        addDigit("7")
    }
    
    @IBAction func onEigth(_ sender: Any) {
        addDigit("8")
    }
    
    @IBAction func onNine(_ sender: Any) {
        addDigit("9")
    }
    
    @IBAction func onPoint(_ sender: Any) {
        addDigit(".")
    }
    
    @IBAction func onEqual(_ sender: Any) {
        calculate()
    }
    
    @IBAction func onPlus(_ sender: Any) {
        operation = .sum
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onSubstract(_ sender: Any) {
        operation = .substract
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onMulti(_ sender: Any) {
        operation = .multi
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onDivision(_ sender: Any) {
        operation = .division
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onPercent(_ sender: Any) {
        operation = .percent
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onPolar(_ sender: Any) {
        operation = .polar
        calculate()
        previousOperation = nil
        isNewValue = true
        result = getFloat()
    }
    
    @IBAction func onReset(_ sender: Any) {
        isNewValue = true
        result = 0
        newValue = 0
        operation = nil
        previousOperation = nil
        resultLabel.text = "0"
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ConstantStrings.Calculator.title
    }
    
    func addDigit(_ digit: String) {
        if isNewValue {
            resultLabel.text = ""
            isNewValue = false
        }
        var digits = resultLabel.text
        digits?.append(digit)
        resultLabel.text = digits
    }
    
    func getFloat() -> Float {
        return Float(resultLabel.text ?? "0") ?? 0
    }
    
    func calculate() {
        guard let operation = operation else {
            return
        }

        if previousOperation != operation {
            newValue = getFloat()
        }
        
        result = operation.makeOperation(result: result, newValue: newValue)
        
        previousOperation = operation
        
        resultLabel.text = "\(result)"
        isNewValue = true
    }
}

enum MathOperation {
    case sum, substract, polar, percent, division, multi
    
    func makeOperation(result: Float, newValue: Float) -> Float {
        switch self {
            //Операция сложения
        case .sum:
            return (result + newValue)
            //Операция вычитания
        case .substract:
            return (result - newValue)
            //Операция смены полярности числа
        case .polar:
            // Ноль не имеет полярности
            return (newValue != 0 ? (newValue * -1.00) : 0)
            //Операция процент от числа
        case .percent:
            return (result / 100 * newValue)
            //Операция деления
        case .division:
            // Защита от деления на ноль
            return (newValue == 0 ? (result) : (result / newValue))
            //Операция умножения
        case .multi:
            return (result * newValue)
        }
    }
}

