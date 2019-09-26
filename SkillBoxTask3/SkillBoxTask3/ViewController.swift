//
//  ViewController.swift
//  SkillBoxTask3
//
//  Created by Ilya on 01.07.2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultLable: UILabel!
    
    @IBOutlet weak var NumberOneTexFil: UITextField!
    
    @IBOutlet weak var SignTexFil: UITextField!
    
    @IBOutlet weak var NumberTwoTexFil: UITextField!
    
    @IBAction func CalculateActionButton(_ sender: Any) {
        
        let check:Int? = Int(NumberOneTexFil.text!) //необходимо для проверки вводимого значения
        let checkTwo:Int? = Int (NumberTwoTexFil.text!) //необходимо для проверки 2го вводимого значения
        
        
        if check == nil || checkTwo == nil  {//Проверка на нил вводимого числа
            
            ResultLable.text = "Введите корректное число"
       
        } else {
            
            switch SignTexFil.text! {
                
            case "*":
                if (Double(check!) * Double(checkTwo!)) > Double(Int.max){ // проверка на переполнение  числа
                    
                    ResultLable.text! = "Результат превысил максимальное значение"
                    
                } else {
                   ResultLable.text! = String(check! * checkTwo!) // Приводим к типу  Double для того, чтобы небыло переполнение Int
                }
    
            case "/":
                ResultLable.text! = String(Double(check!) / Double(checkTwo!)) // Приводим к типу  Double  для коректного вычисления значений
            case "+":
                ResultLable.text! = String(check! + checkTwo!)
            case "-":
                ResultLable.text! = String(check! - checkTwo!)
            default:
                ResultLable.text = "введите коректный знак действия"
                
            }
        }
        
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

