
import UIKit
// Singleton Pattern
// using it in AppDelegate and ViewController
class Singleton{
    static let shared = Singleton()
    var userDetail=userClass()
    var locationGranted: Bool?
    private init(){}
    
    func message(){
        print("Singleton Pattern")
    }
    
    func requestUser() -> userClass{
        return self.userDetail
    }
    

}
class userClass{
    var fname = ""
    var lname = " "
}
