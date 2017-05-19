//: Playground - noun: a place where people can play

import UIKit

class Rectegular {
    
    let widh: Int
    let height: Int
    let depth: Int
    var volume: Int {
        return height * widh * depth
    }
    
    init(height: Int, wight: Int, depth: Int) {
        self.depth = depth
        self.height = height
        self.widh = wight
    }
    
}

let rect = Rectegular(height: 12, wight: 23, depth: 24)
rect.volume

class Person {

    var name: String
    var secondName: String
    var fulName: String {
        get{
            return name + " " + secondName
        }
        
        set(anotherNewValue){
                let array = anotherNewValue.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
    
 }

let person = Person(name: "Valenok", secondName: "Kalugin")
person.fulName
person.name
person.secondName
person.fulName = "Zadirishenko Genya"
person.name
person.secondName 










