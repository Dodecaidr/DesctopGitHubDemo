//
//  ViewController.swift
//  SkillBoxTask2
//
//  Created by Ilya on 30.06.2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 1

    @IBOutlet weak var TextLable: UILabel!
    
    @IBOutlet weak var TextTextFeild: UITextField!
    
    @IBAction func TextButton(_ sender: Any) {
      
        let check:Int? = Int(TextTextFeild.text!) //необходимо для проверки вводимого значения
       
        
        if check == nil {//Проверка на нил вводимого числа
            
            TextLable.text = "Введите целое число"
            
        } else {
        
        number = check!
            
            if Double(pow(2, Double(number))) > Double(Int.max){ // проверка на переполнение целого числа
            
                TextLable.text = "Результат превысил максимальное значение"
            
            } else {
            
        number = Int(pow(2, Double(number)))
        
        TextLable.text = String(number)
            
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

