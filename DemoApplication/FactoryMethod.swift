//
//  FactoryMethod.swift
//  DemoApplication
//
//  Created by shivam kumar on 31/08/21.
//

import UIKit
protocol StudentInfo {
    var name : String {get}
    var marks : Int {get}
    
}

class Topper: StudentInfo {
    var name : String = "rahul"
    var marks : Int = 90
    
}

class Medium: StudentInfo {
    var name : String = "Shivam"
    var marks : Int = 70
    
}
class Failure: StudentInfo {
    var name : String = "Xyz"
    var marks : Int = 30
    
}

class StudentReport{
    func Report(marks : Int) -> String{
        var name : StudentInfo?
        switch marks {
        case 80...100:
            name = Topper()
        case 50...70:
            name = Medium()
        case 30...50:
            name = Failure()
            
        default:
            name = nil
        }
        return name!.name
    }
}
