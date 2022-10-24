//
//  main.swift
//  lab4
//
//  Created by student on 24/10/2022.
//

import Foundation

//Zadanie 1
/*
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
*/
//Zadanie 3
/*
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
*/
//Zadanie 4
/*
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
*/
//Zadanie 5
/*
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
*/
//Zadanie 6

var znak = readLine()!

switch (znak)
{
case "a", "ą", "e", "ę", "i", "o", "u", "y":
    print("samogłoska")
case "b", "c", "ć", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "r", "s", "t", "w", "z", "ż", "ź":
    print("spółgłoska")
case "0","1","2","3","4","5","6","7","8","9":
    print("cyfra")
default:
    print("inny znak")
}
