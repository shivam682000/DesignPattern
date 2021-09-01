//
//  ViewController.swift
//  DemoApplication
//
//  Created by shivam kumar on 31/08/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let user = Singleton.shared.requestUser()
        Singleton.shared.message()
        print("\(user.fname) is \(user.lname)")
        
        
        let object = BuilderPattern()
        let name1 = "Shivam Kumar"
        object.setLettuce(choice: true)
        object.setPatties(choice: 3)
        object.setMayo(choice: false)
        object.setCooked(choice: Burger.Cooked.HOT)
        let object2 = object.build(name: name1)
        object2.Description()
        
    }


}

