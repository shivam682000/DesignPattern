//
//  BuilderPattern.swift
//  DemoApplication
//
//  Created by shivam kumar on 01/09/21.
//

import UIKit
class Burger {
    let customerName : String?
    let Veggie : Bool?
    let Mayo : Bool?
    let Ketchup : Bool?
    let lettuce : Bool?
    let Patties : Int?
    let cook : Cooked?
    enum Cooked :String{
        case Normal = "normal"
        case HOT = "hot"
    }
    init(name : String, Veggie : Bool, Mayo : Bool, Ket : Bool,
         lettuce : Bool, Cook : Cooked, Patties : Int){
        self.customerName = name
        self.Veggie = Veggie
        self.Mayo = Mayo
        self.Ketchup = Ket
        self.lettuce = lettuce
        self.cook = Cook
        self.Patties = Patties
    }
    func Description(){
        print("Name is \(self.customerName!) Veggie \(self.Veggie!) Mayo \(self.Mayo!) Ketchup \(self.Ketchup!) lettuce \(self.lettuce!) cook \(self.cook!) patties \(self.Patties!)")
    }
}

class BuilderPattern {
    private var vagie = false
    private var mayo = false
    private var ketchup = true
    private var lettuce = true
    private var cooked = Burger.Cooked.Normal
    private var patties = 2
    
    func setVeggie(choice : Bool){
        self.vagie = choice
    }
    func setMayo(choice : Bool){
        self.mayo = choice
    }
    func setKetchup(choice : Bool){
        self.ketchup = choice
    }
    func setLettuce(choice : Bool){
        self.lettuce = choice
    }
    func setPatties(choice : Int){
        self.patties = choice
    }
    
    func setCooked(choice : Burger.Cooked){
        self.cooked = choice
    }
    func build(name : String) -> Burger {
        return Burger(name : name,
                      Veggie : self.vagie,
                      Mayo : self.mayo,
                      Ket : self.ketchup,
                      lettuce : self.lettuce,
                      Cook : self.cooked,
                      Patties : self.patties
                      )
    }

}
