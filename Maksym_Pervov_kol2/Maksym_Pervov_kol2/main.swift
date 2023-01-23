//
//  main.swift
//  Maksym_Pervov_kol2
//
//  Created by student on 23/01/2023.
//

import Foundation

//var kot = TypZwierzecia(imię: "Kot domowy", waga: 5 , wzrost: 25, rokUrodzenia: 2013, identyfikator: 1, typ: TypZwierzecia.Typ.kręgowce)
//kot.info()
var z1 = Zwierze(imię: "Kot domowy", waga: 5, wzrost: 25, rokUrodzenia: 2013, identyfikator: 1, typ: TypZwierzecia.Typ.kręgowce, gromada: Zwierze.Gromada.ssaki, liczbaKończyn: 4, maxPożywienieGram: 400, minPowierzchnia: 20, karmienie: [(2, 12)])
var z2 = Zwierze(imię: "Żaba wodna", waga: 0.3, wzrost: 5, rokUrodzenia: 2019, identyfikator: 2, typ: TypZwierzecia.Typ.kręgowce, gromada: Zwierze.Gromada.płazy, liczbaKończyn: 4, maxPożywienieGram: 40, minPowierzchnia: 20, karmienie: [(3, 9)])
var z3 = Zwierze(imię: "Owad", waga: 0.01, wzrost: 2, rokUrodzenia: 2023, identyfikator: 3, typ: TypZwierzecia.Typ.bezkręgowce, gromada: Zwierze.Gromada.owady, liczbaKończyn: 6, maxPożywienieGram: 2, minPowierzchnia: 3, karmienie: [(1, 10)])
var z4 = Zwierze(imię: "Wąż tygrysi", waga: 3, wzrost: 40, rokUrodzenia: 2018, identyfikator: 4, typ: TypZwierzecia.Typ.kręgowce, gromada: Zwierze.Gromada.gady, liczbaKończyn: 4, maxPożywienieGram: 100, minPowierzchnia: 30, karmienie: [(2, 19)])
var z5 = Zwierze(imię: "Kolczak zbrojny", waga: 0.4, wzrost: 5, rokUrodzenia: 2019, identyfikator: 5, typ: TypZwierzecia.Typ.stawonogi, gromada: Zwierze.Gromada.pajęczaki, liczbaKończyn: 8, maxPożywienieGram: 17, minPowierzchnia: 6, karmienie: [(1, 15)])

var zwierze = [Zwierze]()

zwierze.append(z1)
zwierze.append(z2)
zwierze.append(z3)
zwierze.append(z4)
zwierze.append(z5)

var wszystkiePłazy: [Zwierze] = []
for z in zwierze {
    if z.gromada == .płazy {
        wszystkiePłazy.append(z)
    }
}

if wszystkiePłazy.count > 0 {
    for z in wszystkiePłazy {
        z.info()
    }
} else {
    print("Nie ma w tablicy płazów")
}
