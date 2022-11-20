//
//  main.swift
//  lab4
//
//  Created by student on 24/10/2022.
//

import Foundation

//Zadanie 1

print("Wpisz rok")
var rok = Int(readLine()!)!

if (rok % 100 == 0 && rok % 400 == 0)
{
    print("Rok przestępny")
}
else if (rok % 4 == 0)
{
    print("Rok przestępny")
}
else
{
    print("Rok nie przestępny")
}


//Zadanie 2

if (rok % 100 == 0)
{
    print("Wiek: ", rok / 100)
}
else
{
    print("Wiek: ", rok / 100 + 1)
}

//Zadanie 3

print("Wpisz średnią ze studiów (zakres 2 - 5):")
let sr = Float(readLine()!)
switch (sr!)
{
case 4.5..<5: print("Stypendium: 200")
case 4..<4.5: print("Stypendium: 150")
case 3..<4: print("Stypendium: 100")
case 2..<3: print("Stypendium: 0")
default:
    print("Liczba spoza zakresu")
}

//Zadanie 4

print("Liczba a: ")
let a = Float(readLine()!)!

print("liczba b")
let b = Float(readLine()!)!

print("""
1-dodawanie
2-odejmowanie
3-mnożenie
4-dzielenie
""")

let menu = Int(readLine()!)

switch(menu!)
{
case 1:
    let result = a + b
    print(result)
case 2:
    let result = a - b
    print(result)
case 3:
    let result = a * b
    print(result)
case 4:
    let result = a / b
    print(result)
default: print("Błąd wczytywania")
}

//Zadanie 5

print("Podaj kod pocztowy")
let kod = readLine()
switch (kod!){
case let x where x.hasPrefix("20"):
    print("Lublin")
case let x where x.hasPrefix("21"):
    print("Województwo lubelskie")
case let x where x.hasPrefix("22"):
    print("Województwo lubelskie")
case let x where x.hasPrefix("23"):
    print("Województwo lubelskie")
case let x where x.hasPrefix("24"):
    print("Województwo lubelskie")
default:
    print("Podałeś błędny kod")
}

//Zadanie 6

var znak = readLine()!

switch (znak)
{
case "a", "A", "o", "O", "u", "U", "e", "E", "y", "Y", "i", "I":
    print("Wczytano samogłoską")
case "b"..."d","B"..."D", "f"..."h", "F"..."H",  "j"..."n", "J"..."N", "p"..."t", "P"..."T", "v"..."x", "V"..."X", "z", "Z": 
    print("Wczytano spółgłoską")
case "0"..."9": 
    print("Wczytano cyfrę")
default:
    print("inny znak")
}

//Zadanie 7
print("Podaj pesel: ")
let pesel = readLine()!
let range = NSRange(location: 0, length: pesel.utf16.count)
let regex = try! NSRegularExpression(pattern: "[0-9]{11}")
if regex.firstMatch(in: pesel, options: [], range: range) != nil {
    print("Pesel jest poprawny")
    let znak = Int(String(pesel[pesel.index(pesel.endIndex, offsetBy: -2)]))!
    switch(znak % 2 ){
    case 0: print("Podałeś pesel kobiety")
    default: print("Podałęs pesel mężczyzny")
    }
} else{
    print("Pesel nie jest poprawny")
}
