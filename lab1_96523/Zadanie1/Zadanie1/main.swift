//
//  main.swift
//  Zadanie1
//
//  Created by student on 03/10/2022.
//

import Foundation

let a = Int.random(in: 1..<100)
let b = Int.random(in: 1..<100)
let c = Int.random(in: 1..<100)

print("Liczby losowe: ", a, ",", b, ",", c,",")

let sum : Int = (a+b+c)
let average = Float((a+b+c))/3

print("Suma: ", sum)
print("Średnia: ", average)
