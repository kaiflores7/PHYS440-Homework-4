//
//  RK4.swift
//  Homework 4
//
//  Created by Katia Flores on 3/4/22.
//

import SwiftUI

var x = 0.0
var y = 0.0

func calculateRK4 (givenx0 : Double, giveny0 : Double, givenxn : Double, givenn : Int) {
    var k1 = 0.0
    var k2 = 0.0
    var k3 = 0.0
    var k4 = 0.0
    var k = 0.0
    var x0 = givenx0
    var y0 = giveny0
    var xn = givenxn
    var n = givenn
    var yn = 0.0
    let stepSize = (xn - x0)/Double(n)
    
    for _ in 0...n {
        k1 = stepSize * (x0+y0)
        k2 = stepSize * (x0 + (stepSize/2) + y0 + (k1/2))
        k3 = stepSize * (x0 + (stepSize/2) + y0 + (k2/2))
        k4 = stepSize * (x0 + stepSize + y0 + k3)
        k = (k1 + (2*k2) + (2*k3) + k4)/6
        
        yn = y0 + k
        y0 = yn
        x0 = x0 + stepSize
    }
    
}
