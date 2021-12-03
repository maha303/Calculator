//
//  ViewController.swift
//  Calculator
//
//  Created by Maha saad on 28/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var laNumberShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var newOperation = true
    
    func AddNumberToInput(number:String){
        var textNumber = String(laNumberShow.text!)
        if newOperation {
            textNumber = ""
            newOperation = false
        }
        textNumber = textNumber + number
        laNumberShow.text = textNumber
    }
    
    @IBAction func bu0(_ sender: Any) {
        AddNumberToInput(number: "0")
    }
    
    @IBAction func buDot(_ sender: Any) {
        AddNumberToInput(number: ".")
    }
    
    @IBAction func bu1(_ sender: Any) {
        AddNumberToInput(number: "1")
    }
    @IBAction func bu2(_ sender: Any) {
        AddNumberToInput(number: "2")
    }
    
    @IBAction func bu3(_ sender: Any) {
        AddNumberToInput(number: "3")
    }
    
    @IBAction func bu4(_ sender: Any) {
        AddNumberToInput(number: "4")
    }
    
    @IBAction func bu5(_ sender: Any) {
        AddNumberToInput(number: "5")
    }
    
    @IBAction func bu6(_ sender: Any) {
        AddNumberToInput(number: "6")
    }
    
    @IBAction func bu7(_ sender: Any) {
        AddNumberToInput(number: "7")
    }
    @IBAction func bu8(_ sender: Any) {
        AddNumberToInput(number: "8")
    }
    
    @IBAction func bu9(_ sender: Any) {
        AddNumberToInput(number: "9")
    }
    
    var op = "+"
    var number1 :Double?
    
    @IBAction func butMul(_ sender: Any) {
        op = "*"
        number1 = Double(laNumberShow.text!)
        newOperation = true
        
    }
    
    @IBAction func buDiv(_ sender: Any) {
        op = "/"
        number1 = Double(laNumberShow.text!)
        newOperation = true
        
    }
    @IBAction func buSub(_ sender: Any) {
        op = "-"
        number1 = Double(laNumberShow.text!)
        newOperation = true
        
        
    }
    @IBAction func butPlus(_ sender: Any) {
        op = "+"
        number1 = Double(laNumberShow.text!)
        newOperation = true
    }
    
    @IBAction func buEqual(_ sender: Any) {
        let number2 = Double(laNumberShow.text!)
        var results:Double?
        switch op {
        case "*":
            results = number1! * number2!
        case "/":
            results = number1! / number2!
        case "-":
            results = number1! - number2!
        case "+":
            results = number1! + number2!
            
        default:
            results = 0.0
        }
        laNumberShow.text = String(results!)
        newOperation = true
        
    }
    @IBAction func butMinues(_ sender: Any) {
        var text = String(laNumberShow.text!)
        text = "-" + text
        laNumberShow.text = text
    }
    
    @IBAction func butC(_ sender: Any) {
        laNumberShow.text = ""
        newOperation = true
    }
    @IBAction func buPercent(_ sender: Any) {
        var num = Double(laNumberShow.text!)
        num = num! / 100
        laNumberShow.text = String(num!)
        newOperation = true
    }
    
    
}

