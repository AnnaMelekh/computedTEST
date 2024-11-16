//: [Previous](@previous)

import Foundation

var pizzaInInches: Int = 10 {           // observers monitor when this property changed
    
    willSet {
        print(newValue)
      
    }
    
    didSet {
        if pizzaInInches >= 18 {
            print("invalid size, pizza in inches set to 18")
            pizzaInInches = 18
        }
        
        print(oldValue)
    }
    
}

pizzaInInches = 33

var numberOfSlices: Int {
    
    get {
        return pizzaInInches - 4            // GETTER
    }
    
    set {
        print("numberOfSlices now has a value \(newValue)") // SETTER
    }
}

 numberOfSlices = 12
