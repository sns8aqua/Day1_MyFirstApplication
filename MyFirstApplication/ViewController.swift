//
//  ViewController.swift
//  MyFirstApplication
//
//  Created by Santhosh on 05/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let myString: String?
        var myString_Two: String?
        let secondString = "test"
        
        
        print(myString ?? "")
        
        /// guard let myString = myString else { return }
        
        //        if let myString = myString, let myString_Two = myString_Two {
        //            print(myString)
        //        }
        
        
        var myNumber = 20.5
        myNumber = 30.8
        print(myNumber)
 
        
        if myString == secondString {
            print("jsdhgfj")
        }
        self.testFunction(value: myString)
        
        
        ///// Array
        var simpleArray: [String]?
        simpleArray = [String]()
        simpleArray?.append("1")
        simpleArray?.append("2")
        simpleArray?.append("3")
        simpleArray?.append("4")
        print(simpleArray ?? "")
        simpleArray?.insert("10", at: 1)
        print(simpleArray ?? "")
      
        if let array = simpleArray {
            if array.indices.contains(10) {
                simpleArray?.remove(at: 10)
            }
        }
        
        
        ///Dictonary
        var userDictonary: [String: Any]?
        userDictonary = [String: Any]()
        userDictonary?["name"] = "prakash"
        userDictonary?["age"] = 32
        userDictonary?["gender"] = "Male"
        
        print(userDictonary?["name"] ?? "")
        print(userDictonary?["age"] ?? "")
        print(userDictonary?["gender"] ?? "")
        
        print(userDictonary?.keys ?? "")
      

        
        if let sum = self.sumOfValues(a: 10, b: 20) {
            print(sum)
        }
        
    }
    
    func testFunction(value: String?) {
        guard let value = value else { return }
        print(value)
    }
    
    
    func sumOfValues(a: Int?, b: Int?) -> Int? {
        var c: Int?
        if let a = a, let b = b {
            c = a + b
        }
        return c
    }
    
    
}

