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
/*
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
*/


//Kolos Tenisista
class Osoba{
    var imie: String
    var nazwisko: String
    var waga: Double
    var wzrost: Int
    var PESEL: String
    var obywatelstwo: Obywatelstwo
    
    enum Obywatelstwo{
        case Hiszpanskie
        case Niemieckie
        case Polskie
    }
    
    init(imie: String, nazwisko: String, waga: Double, wzrost: Int, PESEL: String, obywatelstwo: Obywatelstwo) {
        self.imie = imie
        self.nazwisko = nazwisko
        self.waga = waga
        self.wzrost = wzrost
        self.PESEL = PESEL
        self.obywatelstwo = obywatelstwo
    }
    
    func info() {
        print("Imie i nazwisko: \(imie) \(nazwisko)")
        print("Waga: \(waga)")
        print("Wzrost: \(wzrost)")
        print("PESEL: \(PESEL)")
        print("Obywatelstwo: \(obywatelstwo)")
    }
}

class Tenisista:Osoba{
    var rodzajGry: RodzajGry
    var najwyzszaPozycja: Int
    var liczbaPunktow: String
    var pozycja: Int
    var ostatnieTurnieje: [String]

    enum RodzajGry {
        case single
        case double
        case singleAndDouble
    }
    
    init(imie: String, nazwisko: String, waga: Double, wzrost: Int, PESEL: String,
    obywatelstwo: Obywatelstwo, rodzajGry: RodzajGry, najwyzszaPozycja: Int, liczbaPunktow: Int, pozycja: Int, 
    ostatnieTurnieje: [String]){
        self.rodzajGry = rodzajGry
        self.najwyzszaPozycja = najwyzszaPozycja
        self.liczbaPunktow = liczbaPunktow
        self.pozycja = pozycja
        self.ostatnieTurnieje = ostatnieTurnieje
        super.init(imie: imie, nazwisko: nazwisko, waga: waga, wzrost: wzrost, PESEL: PESEL, obywatelstwo: obywatelstwo)
    }
    
    override func info(){
        super.info()
        print("Rodzaj gry: \(rodzajGry)")
        print("Najwyzsza pozycja: \(najwyzszaPozycja)")
        print("Liczba punktow: \(liczbaPunktow)")
        print("Pozycja: \(pozycja)")
        print("Ostatnie turnieje: \(ostatnieTurnieje)")
    }
    
    func dodajTurniej(nazwa: String, punkty: Int) {
        ostatnieTurnieje.append(nazwa)
        liczbaPunktow += punkty
    }
}

// let formatter = DateFormatter()
// formatter.dateFormat = "yyyy/MM/dd"
// let date = formatter.date(from: "2021/12/20")
// var i = date!.distance(to: date!)

let gracz1 = Tenisista(imie: "Roger", nazwisko: "Federer", waga: 85, wzrost: 185, PESEL: "0202020202", obywatelstwo: .Niemieckie, RodzajGry: .singleAndDouble, najwyzszaPozycja: 1, liczbaPunktow: 10000, pozycja: 2, ostatnieTurnieje: ["Wimbledon", "Australian Open"])
let gracz2 = Tenisista(imie: "Rafael", nazwisko: "Nadal", waga: 80, wzrost: 185, PESEL: "0303030303", obywatelstwo: .Hiszpanskie, RodzajGry: .single, najwyzszaPozycja: 2, liczbaPunktow: 9000, pozycja: 3, ostatnieTurnieje: ["French Open", "US Open"])
let gracz3 = Tenisista(imie: "Novak", nazwisko: "Djokovic", waga: 78, wzrost: 185, PESEL: "0404040404", obywatelstwo: .Polskie, RodzajGry: .singleAndDouble, najwyzszaPozycja: 3, liczbaPunktow: 8000, pozycja: 1, ostatnieTurnieje: ["Australian Open", "US Open"])
let gracz4 = Tenisista(imie: "Pablo", nazwisko: "Carreno", waga: 85, wzrost: 185, PESEL: "0505050505", obywatelstwo: .Hiszpanskie, RodzajGry: .double, najwyzszaPozycja: 4, liczbaPunktow: 7000, pozycja: 4, ostatnieTurnieje: ["French Open", "Wimbledon"])
let gracz5 = Tenisista(imie: "David", nazwisko: "Ferrer", waga: 75, wzrost: 185, PESEL: "0606060606", obywatelstwo: .Hiszpanskie, RodzajGry: .singleAndDouble, najwyzszaPozycja: 5, liczbaPunktow: 6000, pozycja: 5, ostatnieTurnieje: ["US Open", "Australian Open"])

var gracze = [Tenisista]()
gracze.append(gracz1)
gracze.append(gracz2)
gracze.append(gracz3)
gracze.append(gracz4)
gracze.append(gracz5)

var HiszpanskieGracze: [Tenisista] = []
for gracz in gracze {
    if gracz.obywatelstwo == .Hiszpanskie && gracz.rodzajGry == .double {
        HiszpanskieGracze.append(gracz)
    }
}

if HiszpanskieGracze.count > 0 {
    for gracz in HiszpanskieGracze {
        gracz.info()
    }
} else {
    print("There are no Spanish doubles players in the array.")
}



