//: [Previous](@previous)

import Foundation

 
var width: Float = 3.4

var height: Float = 2.1

var bucketsOfPaint: Int {
    
    get {
        let area = width * height
        return Int(ceil(area / 1.5))
    }
    
    set {
        let area = Float(newValue) * 1.5
        print("Area covered with \(newValue) will be \(area)")
    }
}

bucketsOfPaint = 8

//print(bucketsOfPaint)

