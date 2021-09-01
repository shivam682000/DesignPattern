//
//  BuilderPattern.swift
//  DemoApplication
//
//  Created by shivam kumar on 01/09/21.
//

import UIKit
class Burger {
    let customerName : String?
    let veggie : Bool?
    let mayo : Bool?
    let ketchup : Bool?
    let lettuce : Bool?
    let patties : Int?
    let cook : Cooked?
    
    enum Cooked :String {
        case normal = "normal"
        case hot = "hot"
    }
    
    init(name : String, veggie : Bool, mayo : Bool, ket : Bool,
         lettuce : Bool, cook : Cooked, patties : Int) {
        self.customerName = name
        self.veggie = veggie
        self.mayo = mayo
        self.ketchup = ket
        self.lettuce = lettuce
        self.cook = cook
        self.patties = patties
    }
    
   
    func description() {
        print("Name is \(self.customerName ?? "") Veggie \(self.veggie ?? true) Mayo \(self.mayo ?? true) Ketchup \(self.ketchup ?? true) lettuce \(self.lettuce ?? true) cook \(self.cook ?? Cooked.normal) patties \(self.patties ?? 2)")
    }
}

class BuilderPattern {
    private var vagie = false
    private var mayo = false
    private var ketchup = true
    private var lettuce = true
    private var cooked = Burger.Cooked.normal
    private var patties = 2
    
    func setVeggie(choice : Bool) {
        self.vagie = choice
    }
    
    func setMayo(choice : Bool) {
        self.mayo = choice
    }
    
    func setKetchup(choice : Bool) {
        self.ketchup = choice
    }
    
    func setLettuce(choice : Bool) {
        self.lettuce = choice
    }
    
    func setPatties(choice : Int) {
        self.patties = choice
    }
    
    func setCooked(choice : Burger.Cooked) {
        self.cooked = choice
    }
    
    func build(name : String) -> Burger {
        return Burger(name : name,
                      veggie : self.vagie,
                      mayo : self.mayo,
                      ket : self.ketchup,
                      lettuce : self.lettuce,
                      cook : self.cooked,
                      patties : self.patties
                )
    }
}
