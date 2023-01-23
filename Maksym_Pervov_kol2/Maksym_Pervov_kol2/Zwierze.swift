//
//  Zwierze.swift
//  Maksym_Pervov_kol2
//
//  Created by student on 23/01/2023.
//
class Zwierze:TypZwierzecia{
    var gromada: Gromada
    var liczbaKończyn: Int
    var maxPożywienieGram: Int
    var minPowierzchnia: Double
    var karmienie: [(Int, Int)]
    
    enum Gromada{
        case ssaki
        case ptaki
        case płazy
        case gady
        case owady
        case pajęczaki
        case krążkopławy
        case paprotniki
        case wątrobowce
    }
    
    init(imię: String, waga: Double, wzrost: Int, rokUrodzenia: Int, identyfikator: Int, typ: TypZwierzecia.Typ, gromada: Zwierze.Gromada, liczbaKończyn: Int, maxPożywienieGram: Int, minPowierzchnia: Double, karmienie: [(Int, Int)]) {
        self.gromada = gromada
        self.liczbaKończyn = liczbaKończyn
        self.maxPożywienieGram = maxPożywienieGram
        self.minPowierzchnia = minPowierzchnia
        self.karmienie = karmienie
        super.init(imię: imię, waga: waga, wzrost: wzrost, rokUrodzenia: rokUrodzenia, identyfikator: identyfikator, typ: typ)
    }
    
    override func info(){
        super.info()
        print("Gromada: \(gromada)")
        print("Liczba kończyn: \(liczbaKończyn)")
        print("Maksymalna ilość pożywienia dziennie w gramach: \(maxPożywienieGram)")
        print("Minimalna powierzchnia do życia: \(minPowierzchnia)")
        print("Karmienie (Ilość, Godzina): \(karmienie)")
    }
    
    func aktualizujKarmienie(godzina: Int, ilośćPokarmu: Int){
        for i in 0..<karmienie.count{
            if(godzina == karmienie[i].1){
                karmienie[i].0 = ilośćPokarmu
            }
        }
    }
}
