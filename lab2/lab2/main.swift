//
//  main.swift
//  Laba2
//
//  Created by student on 10/10/2022.
//

//zadanie 1
import Foundation

print("Hello, World!")
print("Podaj rok urodzenia")
var rok_urodzenia = readLine()!
if let temp = Int(rok_urodzenia)
{
    print("Masz \(2022-temp) lat")
}



//zadanie 2


print("Podaj długość promienia koła")
var promien = readLine()!

let pi = 3.1415926

var temp = Double(promien)!
var wynik : Double = 0
wynik = 2 * pi * temp
var w = String(format: "%.2f", wynik)
print("Obwód koła: \(w)")


//zadanie 3


print("Podaj długość boku: ")
var bok = readLine()!

var temp = Double(bok)!
var pole : Double
pole = (temp * temp) * 6
var p = String(format: "%.2f", pole)
print("Pole sześcianu: \(p)")

var objetosc : Double = temp * temp * temp
var o = String(format: "%.2f", objetosc)
print("Objętość sześcianu: \(o)")


//zadanie 4

print("Podaj a:")
var a = readLine()!
var a_t = Double(a)!

print("Podaj b:")
var b = readLine()!
var b_t = Double(b)!

print("Podaj s:")
var s = readLine()!
var s_t = Double(s)!

print("Podaj z:")
var z = readLine()!
var z_t = Double(z)!

print("Podaj cenę:")
var cena = readLine()!
var cena_t = Double(cena)!

var wynik = Double(2*(a_t+b_t)+2*(b_t+z_t)-2*s_t)
var wynik_cena = Double(wynik*cena_t)

print("Oczekiwana długość listwy: \(String(format: "%.2f", wynik)) metrów")
print("Oczekiwana wartośćL \(String(format: "%.2f", wynik_cena)) zł")

//Zadanie 5
var suma = 0
var srednia = 0.0

for _ in 1..<4 {
    let liczba = Int.random(in: 1..<10)
    print("Wylosowano: ",liczba)
    suma = suma + liczba;
}
srednia = Double(suma)/3.0
print("Srednia: ",srednia)

//Zadanie 6
var ocena1 = 0.0
var ocena2 = 0.0
var ocena3 = 0.0
let w1 = 1
let w2 = 2
let w3 = 3

print("Podaj ocene 1")
ocena1 = Double(readLine()!)!
ocena1 = ocena1 * Double(w1)
print("Podaj ocene 2")
ocena2 = Double(readLine()!)!
ocena2 = ocena2 * Double(w2)
print("Podaj ocene 3")
ocena3 = Double(readLine()!)!
ocena3 = ocena3 * Double(w3)
let srWazona = Double(ocena1 + ocena2 + ocena3)/Double(w1 + w2 + w3)
print("Srednia wazona: ",srWazona)
