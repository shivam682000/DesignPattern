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
    }


}

