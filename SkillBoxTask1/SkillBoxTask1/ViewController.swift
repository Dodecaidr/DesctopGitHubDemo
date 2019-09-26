//
//  ViewController.swift
//  SkillBoxTask1
//
//  Created by Ilya on 30.06.2019.
//  Copyright © 2019 Ilya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name:String=""

    @IBOutlet weak var NameLable: UILabel!
    
    @IBOutlet weak var NameTextFild: UITextField!
    
    @IBAction func AloutNameButton(_ sender: Any) {
        if NameTextFild.text! == ""{}
        else{
        name = NameLable.text! + " " + NameTextFild.text!
        
        NameLable.text = name
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

