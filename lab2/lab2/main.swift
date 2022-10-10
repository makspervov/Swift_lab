//
//  main.swift
//  Laba2
//
//  Created by student on 10/10/2022.
//

//zadanie 1
import Foundation

print("Hello, World!")


/*
print("Podaj rok urodzenia")

var rok_urodzenia = readLine()!

if let temp = Int(rok_urodzenia)
{
    print("Masz \(2022-temp) lat")
}
*/


//zadanie 2

/*
print("Podaj długość promienia koła")
var promien = readLine()!

let pi = 3.1415926

var temp = Double(promien)!
var wynik : Double = 0
wynik = 2 * pi * temp
var w = String(format: "%.2f", wynik)
print("Obwód koła: \(w)")
*/

//zadanie 3

/*
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
*/

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

var wynik1 = (2*a_t+b_t+(b_t-s_t))   //wynik = 18.75
var wynik2 = (2*z_t+2*(b_t-s_t))    //wynik = 29.5

var wynik = Double(wynik1+wynik2)
var wynik_cena = Double(wynik*cena_t)

print("Oczekiwana długość listwy: \(String(format: "%.2f", wynik)) metrów")
print("Oczekiwana wartośćL \(String(format: "%.2f", wynik_cena)) zł")
