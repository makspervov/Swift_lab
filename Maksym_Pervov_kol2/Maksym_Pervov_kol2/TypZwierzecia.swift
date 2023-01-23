//
//  TypZwierzecia.swift
//  Maksym_Pervov_kol2
//
//  Created by student on 23/01/2023.
//
class TypZwierzecia{
    var imię: String
    var waga: Double
    var wzrost: Int
    var rokUrodzenia: Int
    var identyfikator: Int
    var typ: Typ
    
    enum Typ{
        case kręgowce
        case bezkręgowce
        case stawonogi
    }
    
    init(imię: String, waga: Double, wzrost: Int, rokUrodzenia: Int, identyfikator: Int, typ: Typ) {
        self.imię = imię
        self.waga = waga
        self.wzrost = wzrost
        self.rokUrodzenia = rokUrodzenia
        self.identyfikator = identyfikator
        self.typ = typ
    }
    
    func obliczWiek(rokUrodzenia: Int)->Int{
        return 2023 - rokUrodzenia
    }
    
    func info()->(){
        print("Imię: \(imię)")
        print("Waga: \(waga)")
        print("Wzrost: \(wzrost)")
        print("Rok urodzenia oraz wiek: \(rokUrodzenia), \(obliczWiek(rokUrodzenia: rokUrodzenia))")
        print("ID zwierzęcia: \(identyfikator)")
        print("Typ: \(typ)")
    }
}
