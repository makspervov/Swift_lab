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
guard let licz2 = Int(readLine()!) else {
    fatalError("Nie liczba")
}
func czyPierwsza(_ n: Int) -> Bool {
    guard n >= 2     else { return false }
    guard n != 2     else { return true  }
    guard n % 2 != 0 else { return false }
    return !stride(from: 3, through: Int(sqrt(Double(n))), by: 2).contains { n % $0 == 0 }
}

print(czyPierwsza(Int(licz2)!))

/*Zadanie 3*/
print("Podaj liczbę minimum trzycyfrową")
var liczba = readLine()!

var temp : Int?
temp = Int(liczba)

while (temp == nil || liczba.count < 3) {
    print("Nie podano liczby lub podano napis nie będący liczbą! Podaj ponwnie")
    liczba = readLine()!
    temp = Int(liczba)
}

var iloczyn = 1.0;
var count = 0.0;
for char in liczba {
    iloczyn = iloczyn * Double(String(char))!
    count = count + 1;
}

let srednia_geo = pow((iloczyn), (1.0/count))
//print("Srenia geometryczna:",srednia_geo)

/*Zadanie 4*/
print("Podaj napis")
var napis = readLine()!
var czyPalindrom = true;
let char = Array(napis)
for i in 0..<char.count / 2 {
    if char[i] != char[char.count - 1 - i] {
        czyPalindrom = false
    }
}

if (czyPalindrom) {
    print("Palindrom")
} else {
    print("Nie palindrom")
}

/*Zadanie 5*/
var a1, a2, a3 : Int
var max = 0
var min = 0
var licz : String = ""
print("Podaj trzy pierwsze wyrazy ciągu")
a1 = Int(readLine()!)!
a2 = Int(readLine()!)!
a3 = Int(readLine()!)!
repeat {
    if ((a2 > a1) && (a2 > a3)) {
        max = max + 1
    }
    if ((a2 < a1) && (a2 < a3)) {
        min = min + 1
    }
    a1 = a2
    a2 = a3
    licz = readLine()!
    if let temp = Int(licz) {
        a3 = temp
    }
}
while (licz != "k")

print("Max : \(max), Min: \(min)")
