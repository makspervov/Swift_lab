import Foundation

enum Ozdoba{
    case bombka
    case cukierek
    case pierniczek
    case zabawka
}

enum RodzajDrzewa{
    case lisciaste
    case iglaste
}

var drzewo = Drzewo(wysokosc: 5, rodzaj_drzewa: RodzajDrzewa.lisciaste, rokZasadzenia: 2002)
var choinka = Choinka(wysokosc: 3, rodzajdrzewa: RodzajDrzewa.lisciaste, rokZasadzenia: 1999, liczbaPoziomow: 7, wysokoscPnia: 2.0, liczbaOzdob: 6, rodzajOzdob: Ozdoba.pierniczek)
drzewo.wyswietl()
choinka.wyswietl()
//choinka.rysujChoinke(layercount: choinka.wysokosc, levelcount: choinka.liczbaPoziomow)
choinka.rysujOzdobionaChoinke(layercount: choinka.wysokosc, levelcount: choinka.liczbaPoziomow)
