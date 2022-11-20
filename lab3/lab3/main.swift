//
//  main.swift
//  lab3
//
//  Created by student on 17/10/2022.
//

import Foundation

print("Laboratorium 3\nZadanie 1\n\n")

var jednoliniowy = "Ala ma kota"
var wieloliniowy = """

Swift is a powerful and intuitive programming language for
    iOS,
        iPadOS,
            macOS,
                tvOS,
                    and watchOS.
"""
print (jednoliniowy)
print (wieloliniowy)



print("\n\nZadanie 2\n\n")

var tekst = """
\t"Nauka kodowania to nie tylko nauka języka technologii.\n
\tTo odkrywanie nowych sposobów myślenia\n
\ti urzeczywistnianie rozmaitych koncepcji."\n
"""
print(tekst)

print("\n\nZadanie 3")

print("Podaj imie")
let imie = readLine()!

print("Podaj drugie imie")
let drugieImie = readLine()!

print("Podaj nazwisko")
let nazwisko = readLine()!

print("Podaj rok urodzenia")
let rokUrodzenia = readLine()!

//Zamiast operatora + może być metoda append imie.append(drugieImie).append(...)
var wynik1 = imie + drugieImie + nazwisko + rokUrodzenia
print(wynik1)

let range = wynik1.index(wynik1.startIndex, offsetBy: imie.count) ..< wynik1.index(wynik1.startIndex,offsetBy: imie.count+drugieImie.count)

wynik1.removeSubrange(range)
print(wynik1)

let range2 = wynik1.index(wynik1.startIndex, offsetBy: imie.count+nazwisko.count) ..< wynik1.endIndex

wynik1.removeSubrange(range2)
let wiek = 2022 - Int(rokUrodzenia)!
wynik1.insert(contentsOf: String(wiek), at: wynik1.endIndex)
print(wynik1)

if wynik1.hasPrefix("D") {
    print("Zaczyna się od D")
} else {
    print("Nie zaczyna się od D")
}



//Zadanie 4
print("Podaj ciąg")
var ciag = readLine()!
print("Podaj znak")
var znak = readLine()!
print("Podaj odległość")
var odl = Int(readLine()!)!

if ciag.hasPrefix(znak) {
    print("Na początku")
}

if ciag.hasSuffix(znak){
    print("Na końcu")
}

var s = ciag[ciag.index(ciag.startIndex, offsetBy: odl)]
if znak == String(s) {
    print("Oddalony o",odl,"od początku")
}

s = ciag[ciag.index(ciag.endIndex, offsetBy: -odl)]
if znak == String(s) {
    print("Oddalony o",odl,"od końca")
}

//Zadanie 5
print("Podaj pierwszy ciag")
let c1 = readLine()!
print("Podaj drugi ciag")
let c2 = readLine()!

if c1 == c2 {
    print("Ciagi identyczne")
}
print("Podaj perfix")
let pref = readLine()!

if c1.hasPrefix(pref) {
    print("Pierwszy ciag ma prefix")
}

if c2.hasPrefix(pref) {
    print("Drugi ciag ma prefix")
}

print("Podaj suffix")
let suf = readLine()!

if c1.hasSuffix(suf) {
    print("Pierwszy ciag ma suffix")
}

if c2.hasSuffix(suf) {
    print("Drugi ciag ma suffix")
}


//Zadanie 6
let kursDolara = 3.9

print("Podaj kwotę w złotówkach")
let kwota = Double(readLine()!)!

print(kwota,"zł =",String(format: "%.2f", kwota/kursDolara))
