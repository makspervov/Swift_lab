//
//  main.swift
//  lab12
//
//  Created by student on 16/01/2023.
//

import Foundation

/*
 Zadanie 12.1.
 
 Polecenie 1. Utwórz protokół LiczbaZepolona, która zawiera dwie właściwości: re (część
 rzeczywistą liczby) oraz im (część urojoną liczby).
 
 Polecenie 2. Utwórz klasę OperacjeNaLiczbachZespolonych, która zaimplementuje dodawanie
 dwóch liczb, odejmowanie dwóch liczb oraz wyświetlanie liczby zespolonej. Klasa musi
 adoptować zdefiniowany protokół.
 */

//protocol LiczbaZespolona{
//    var re: Double {get set}
//    var im: Double {get set}
//}
//
//class OperacjeNaLiczbachZespolonych: LiczbaZespolona{
//    var re: Double
//    var im: Double
//
//    init(re: Double, im: Double) {
//        self.re = re
//        self.im = im
//    }
//
//    func dodaj (_ num: OperacjeNaLiczbachZespolonych) -> OperacjeNaLiczbachZespolonych{
//        return OperacjeNaLiczbachZespolonych(re: self.re + num.re, im: self.im + num.im)
//    }
//
//    func odejmuj (_ num: OperacjeNaLiczbachZespolonych) -> OperacjeNaLiczbachZespolonych{
//        return OperacjeNaLiczbachZespolonych(re: self.re - num.re, im: self.im - num.im)
//    }
//
//    var wyswietl: Void{
//        print("Wynik: (\(re) + \(im)i))")
//    }
//}
//
//let l1 = OperacjeNaLiczbachZespolonych(re: 14, im: 3)
//let l2 = OperacjeNaLiczbachZespolonych(re: -6, im: 1)
//
//var wynik = l1.dodaj(l2)
//wynik.wyswietl
//
//wynik = l1.odejmuj(l2)
//wynik.wyswietl

/*
 Zadanie 12.2.
 Polecenie 1. Utwórz protokół LiczbaLosowa, która zawiera funkcję generujLiczbę() zwracającą
 losową liczbę typu całkowitego.
 
 Polecenie 2. Utwórz klasę Liczby, która adoptuje zdefiniowany protokół, zawierającą 2 liczby
 całkowite. Klasa powinna zawierać takie funkcje jak: wyświetlenie 2 liczb oraz podniesienie
 liczby do potęgi zdefiniowanej jako parametr.
 
 Polecenie 3. Przetestuj utworzone funkcje.
 */

//protocol LiczbaLosowa{
//    func generujLiczbe() -> Int
//}
//
//class Liczby: LiczbaLosowa {
//    func generujLiczbe() -> Int {
//        return Int.random(in: 1...100)
//    }
//
//    var l1: Int = 0
//    var l2: Int = 0
//
//    init(l1: Int, l2: Int) {
//        self.l1 = generujLiczbe()
//        self.l2 = generujLiczbe()
//    }
//
//    func wyswietl() {
//        print("Liczba 1: \(l1)")
//        print("Liczba 2: \(l2)")
//    }
//
//    func doPotegi(power: Int) {
//        l1 = Int(pow(Double(l1), Double(power)))
//        l2 = Int(pow(Double(l2), Double(power)))
//    }
//}
//
//let a = Liczby(l1: 0, l2: 0)
//a.wyswietl()
//print("Po potęgowaniu: ")
//a.doPotegi(power: 3)
//a.wyswietl()

/*
 Zadanie 12.3.
 Polecenie 1. Zdefiniuj typ wyliczeniowy do obsługi błędów dotyczących: dzielenia przez 0 oraz
 obliczenie pierwiastka z liczby niedodatniej.
 
 Polecenie 2. Utwórz funkcję, która wywoła odpowiednie błędy.
 
 Polecenie 3. Obsłuż błędy za pomocą instrukcji do-catch.
 
 Polecenie 4. Utwórz program składający wykonujący operację dzielenia dwóch liczb
 całkowitych oraz pierwiastkowania.
 */

//enum Walidacja: Error{
//    case DzieleniePrzezZero
//    case UjemnyPierwiastek
//}
//
//func waliduj(a: Int, b: Int) throws -> Double{
//    guard b != 0 else {
//        throw Walidacja.DzieleniePrzezZero
//    }
//    let wynik = Double(a)/Double(b)
//
//    guard wynik > 0 else{
//        throw Walidacja.UjemnyPierwiastek
//    }
//    return sqrt(wynik)
//}
//
//do{
//    let wynik = try waliduj(a: 12, b: 0)
//    print(wynik)
//}
//
//catch Walidacja.DzieleniePrzezZero{
//    print("Nie można dzielić przez 0")
//}
//catch Walidacja.UjemnyPierwiastek{
//    print("Pierwiastek jest mniejsze lub równe 0")
//}

/*
 Zadanie 12.4.
 Polecenie 1. Zdefiniuj typ wyliczeniowy do obsługi błędów podczas wypłacania pieniędzy z
 bankomatu: niewystarczające środki na koncie, brak kwoty w bankomacie, przekroczenie
 kwoty dziennego limitu, brak możliwości wypłacenia kwoty (brak nominałów), inny błąd (np.
 błędna kwota).
 
 Polecenie 2. Utwórz funkcję, która wywoła odpowiednie błędy.
 
 Polecenie 3. Obsłuż błędy za pomocą instrukcji do-catch.
 
 Polecenie 4. Utwórz program, który wczyta od użytkownika kwotę do wypłaty w bankomacie
 oraz wyświetli informacje o poprawnie wykonanej operacji lub o błędzie, który wystąpił.
 Kwota w bankomacie oraz nominały można zdefiniować w programie jako stałe.
 */

enum ATMErrors: Error{
    case NiewystarczajaceSrodki
    case BrakKwoty
    case Limit
    case BrakNominalow
    case BlednaKwota
    case Inne
}

var nominaly = [200,200,200,100,100,50,50]
let stanKonta = 700
let limit = 600
func withdraw() throws{
    guard var money = Int(readLine()!)else{
        throw ATMErrors.BlednaKwota
    }
    var sum = 0
    for i in 0...6{
        sum += nominaly[i]
    }
    guard money<sum else{
        throw ATMErrors.BrakKwoty
    }
    guard money<stanKonta else{
        throw ATMErrors.NiewystarczajaceSrodki
    }
    guard money<limit else{
        throw ATMErrors.Limit
    }
    for nominal in nominaly{
        if(nominal <= money){
          money -= nominal
            guard money < 0 else{
                throw ATMErrors.BrakNominalow
            }
        }
    }}

do{
    try withdraw()
    print("Poprawne dane!")
}

catch ATMErrors.NiewystarczajaceSrodki{
    print("Niewystarczająca ilość środków na koncie")
}

catch ATMErrors.BrakKwoty{
    print("Brak kwoty")
}

catch ATMErrors.Limit{
    print("Przekrocono dzienny limit wypłaty")
}

catch ATMErrors.BrakNominalow{
    print("Brak nominałów w bankomacie")
}

catch ATMErrors.BlednaKwota{
    print("Wprowadzona błędna kwota")
}

catch ATMErrors.Inne{
    print("Bankomat nie działa")
}
