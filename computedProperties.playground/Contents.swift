import UIKit

var pizzaInInches: Int = 10 {           // observers monitor when this property changed
    
    willSet {
        print(pizzaInInches)
        print(newValue)
    }
    
    didSet {
        if pizzaInInches >= 18 {
            print("invalid size, pizza in inches set to 18")
            pizzaInInches = 18
        }
    }
    
}

pizzaInInches = 18
print(pizzaInInches)


var numberOfPeople: Int = 12
let slicesPerPerson: Int = 4

var numberOfSlicesGeneral: Int {
    
    get {
        return pizzaInInches - 4            // GETTER
    }
    
    set {
        print("numberOfSlices now has a value \(newValue)") // SETTER
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlicesGeneral / slicesPerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
    set {
        let totalSlices = numberOfSlicesGeneral * newValue
        numberOfPeople = totalSlices / slicesPerPerson
    }
}


