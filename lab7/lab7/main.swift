//
//  main.swift
//  lab7
//
//  Created by student on 28/11/2022.
//

import Foundation

//print("Zadanie 1\n")
//
//var osoba_1 = (imie: "Maksym", nazwisko: "Pervov", wiek: 19)
//var osoba_2 = (imie: "Andrzej", nazwisko: "Nowak", wiek: 22)
//
//if (osoba_1.wiek < osoba_2.wiek){
//    print(osoba_2.imie, osoba_2.nazwisko, osoba_2.wiek)
//}
//else if (osoba_1.wiek == osoba_2.wiek){
//    print(osoba_1.imie, osoba_1.nazwisko, osoba_1.wiek)
//    print(osoba_2.imie, osoba_2.nazwisko, osoba_2.wiek)
//}
//else{
//    print(osoba_1.imie, osoba_1.nazwisko, osoba_1.wiek)
//}

//print("Zadanie 2\n")
//
//enum Ocena : Double, CaseIterable{
//case o1 = 2.0
//case o2 = 3.0
//case o3 = 3.5
//case o4 = 4.0
//case o5 = 4.5
//case o6 = 5.0
//}
//
//var osoba1 = (nazw:"Nowak", o1: Ocena.o1, o2: Ocena.o3, o3: Ocena.o5)
//var osoba2 = (nazw:"Duda", o1: Ocena.o4, o2: Ocena.o4, o3: Ocena.o6)
//var osoba3 = (nazw:"Kowalski", o1: Ocena.o2, o2: Ocena.o4, o3: Ocena.o6)
//
//var s1 = (osoba1.o1.rawValue + osoba1.o2.rawValue + osoba1.o3.rawValue)/3
//var s2 = (osoba2.o1.rawValue + osoba2.o2.rawValue + osoba2.o3.rawValue)/3
//var s3 = (osoba3.o1.rawValue + osoba3.o2.rawValue + osoba3.o3.rawValue)/3
//
//var tab: [(nazwa: String, srednia: Double)] = []
//tab.append((nazwa: osoba1.nazw, srednia: s1 ))
//tab.append((nazwa: osoba2.nazw, srednia: s2 ))
//tab.append((nazwa: osoba3.nazw, srednia: s3 ))
//print(tab)
//
//var sort = tab.sorted(by: {$0.srednia>$1.srednia})
//print(sort)

//print("Zadanie 3\n")
//
//
//print("Liczba mieszkań: ")
//var n = Int(readLine()!)!
//guard n>0 else{
//    fatalError("Liczba mniejsza lub równa 0")
//}
//
//var lok = ""
//var pow = 1
//var cena = 1
//var tab: [(lokalizacja: String, powierzchnia: Int, cena: Int)] = []
//
//for i in 1..<n+1{
//    print("\nMieszkanie nr. \(i)")
//    print("Lokalizacja:")
//    lok = readLine()!
//    print("Powierzchnia, m\u{B2}:")
//    pow = Int(readLine()!)!
//    print("Cena za m\u{B2}, \u{24}:")
//    cena = Int(readLine()!)!
//    tab.append((lokalizacja: lok, powierzchnia: pow, cena: cena))
//}
//print("\n", tab)
//
//print("Najdroższe mieszkanie: ")
//var max = tab.max(by: {$0.cena*$0.powierzchnia<$1.cena*$1.powierzchnia})
//print(max!)
//
//print("Najtańsze mieszkanie: ")
//var min = tab.min(by: {$0.cena*$0.powierzchnia<$1.cena*$1.powierzchnia})
//print(min!)
//
//print("Podaj lokalizacje: ")
//var l = readLine()
//var f = tab.first(where: {$0.lokalizacja == l})
//print(f!)

//print("Zadanie 4\n")
//
//enum Miesiac : String, CaseIterable{
//    case styczeń
//    case luty
//    case marzec
//    case kwiecień
//    case maj
//    case czerwiec
//    case lipiec
//    case sierpień
//    case wrzesień
//    case październik
//    case listopad
//    case grudzień
//}
//
//var miesiac = Miesiac.kwiecień
//switch(miesiac){
//case Miesiac.styczeń, Miesiac.luty, Miesiac.grudzień:
//    print("Zima")
//case Miesiac.marzec, Miesiac.kwiecień, Miesiac.maj:
//    print("Wiosna")
//case Miesiac.czerwiec, Miesiac.lipiec, Miesiac.sierpień:
//    print("Lato")
//case Miesiac.wrzesień, Miesiac.październik, Miesiac.listopad:
//    print("Jesień")
//}

print("Zadanie 5\n")

print("Liczba mieszkań: ")
var n = Int(readLine()!)!
guard n>0 else{
    fatalError("Liczba mniejsza lub równa 0")
}

enum Standard: Int, CustomStringConvertible, CaseIterable{
    case wysoki = 3
    case sredni = 2
    case niski = 1
    var description: String{
        switch self{
        case .niski: return "Niski"
        case .sredni: return "Sredni"
        case .wysoki: return "Wysoki"
        }
    }
}

var lok = ""
var pow = 1
var cena = 1
var tab: [(lokalizacja: String, powierzchnia: Int, cena: Int, stand: Standard)] = []

for i in 1..<n+1{
    print("\nMieszkanie nr. \(i)")
    
    print("Lokalizacja:")
    lok = readLine()!
    
    print("Powierzchnia, m\u{B2}:")
    pow = Int(readLine()!)!
    
    print("Cena za m\u{B2}, \u{24}:")
    cena = Int(readLine()!)!
    
    let stan = Standard.allCases.randomElement()!
    
    tab.append((lokalizacja: lok, powierzchnia: pow, cena: cena, stand: stan))
}
print("\n", tab)

print("\nNajdroższe mieszkanie: ")
var max = tab.max(by: {$0.cena*$0.powierzchnia<$1.cena*$1.powierzchnia})
print(max!)

print("\nNajtańsze mieszkanie: ")
var min = tab.min(by: {$0.cena*$0.powierzchnia<$1.cena*$1.powierzchnia})
print(min!)

print("Podaj lokalizacje: ")
var l = readLine()
var f = tab.first(where: {$0.lokalizacja == l})
print(f!)

var sort = tab.sorted(by: {$0.stand.rawValue<$1.stand.rawValue})
print(sort)
