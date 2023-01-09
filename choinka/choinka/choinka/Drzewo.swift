import Foundation

class Drzewo{
    let wysokosc: Int
    var rodzaj_drzewa: RodzajDrzewa
    var rokZasadzenia: Int
    
    init(wysokosc: Int, rodzaj_drzewa: RodzajDrzewa, rokZasadzenia: Int) {
        self.wysokosc = wysokosc
        self.rodzaj_drzewa = rodzaj_drzewa
        self.rokZasadzenia = rokZasadzenia
    }
    
    func wyswietl(){
        print("""
Wysokosc \(wysokosc);
Rodzaj drzewa \(rodzaj_drzewa);
Rok zasadzenia \(rokZasadzenia);

""")
    }
}
