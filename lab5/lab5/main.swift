//
//  main.swift
//  lab5
//
//  Created by student on 07/11/2022.
//

import Foundation

//Zadanie 1
print("Zadanie 1 ")
print("Wpisz liczbę: ")
var licz = readLine()!

var a1 = 0
var a2 = 1
print("Fibonacci: ", a1)
repeat{
    print("Fibonacci: ",a2)
    let temp = a1
    a1 = a2
    a2 = temp + a2
} while a2 < Int(licz)!


//Zadanie 2
print("\nZadanie 2 ")
print("Wprowadż liczbę: ")
var licz2 = readLine()!

func czyPierwsza(_ n: Int) -> Bool {
    guard n >= 2     else { return false }
    guard n != 2     else { return true  }
    guard n % 2 != 0 else { return false }
    return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

print(czyPierwsza(Int(licz2)!))


//Zadanie 3

print("\nZadanie 3 ")
print("Wprowadż liczbę trzycyfrową: ")
var licz3 = readLine()!
var l3 = Int(licz3)!
if (l3 < 100 && l3 > -100){
    print("NO I CO? POWIEDZIAŁEM, ŻE TRYCYFROWĄ!")
}
else{
    for c in licz3{
        print(Int(String(c))!)
        print("Rozmiar: \(c.licz3)")
        var wynik = 0
        print("Wynik: \(wynik)")
    }
}
