
import UIKit
// Singleton Pattern
// using it in AppDelegate and ViewController
class Singleton {
    static let shared = Singleton()
    var userDetail=UserClass()
    var locationGranted: Bool?
    
    private init() {
        
    }
    
    func message() {
        print("Singleton Pattern")
    }
    
    func requestUser() -> UserClass {
        return self.userDetail
    }
}

class UserClass{
    var fname = ""
    var lname = " "
}
