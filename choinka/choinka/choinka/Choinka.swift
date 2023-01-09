class Choinka:Drzewo{
    var liczbaPoziomow: Int
    var wysokoscPnia: Float
    var liczbaOzdob: Int
    var rodzajOzdob: Ozdoba
    
    init(wysokosc: Int,rodzajdrzewa: RodzajDrzewa, rokZasadzenia: Int, liczbaPoziomow:Int, wysokoscPnia: Float, liczbaOzdob: Int, rodzajOzdob: Ozdoba) {
        self.liczbaPoziomow = liczbaPoziomow
        self.wysokoscPnia = wysokoscPnia
        self.liczbaOzdob = liczbaOzdob
        self.rodzajOzdob = rodzajOzdob
        super.init(wysokosc: wysokosc, rodzaj_drzewa: rodzajdrzewa, rokZasadzenia: rokZasadzenia)
    }
    
    override func wyswietl(){
        super.wyswietl()
        print("""
Liczba poziomow \(liczbaPoziomow);
Wysokosc pnia \(wysokoscPnia);
Liczba ozdob \(liczbaOzdob);
Rodzaj ozdob \(rodzajOzdob)

""")
    }
    
    func rysujChoinke(layercount:Int, levelcount:Int) {
        var length = layercount * levelcount
        var starcount = 1
        var spacecount = length
        for _ in 1...layercount {
            for _ in 1...levelcount {
                for _ in 1...spacecount{
                    print(" ",terminator: "")
                }
                for _ in 1...starcount {
                    print("*",terminator: "")
                }
                print()
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
            }
            else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...3 { //3 to wysokość pnia
            for _ in 1...spacecount-1 {
                print(" ",terminator: "")
            }
            for _ in 1...3 {
                print("#",terminator: "")
            }
            print()
        }
    }
    
    func rysujOzdobionaChoinke(layercount:Int, levelcount:Int){
        let length = layercount * levelcount
        var starcount = 1
        let num: Int
        var spacecount = length
        for _ in 1...layercount {
            for j in 1...levelcount {
                var dec = j
                for _ in 1...spacecount{
                    print(" ",terminator: "")
                }
                for i in 1...starcount {
                    let num = Int.random(in: 1...starcount+1-i);
                    if(num<=dec){
                        print("o",terminator: "")
                        dec -= 1
                    }
                    else{
                        print("*",terminator: "")
                    }
                }
                print()
                starcount += 2
                spacecount -= 1
            }
            starcount = starcount - 2
            spacecount = spacecount + 1
            if levelcount <= 3 {
                starcount -= 2
                spacecount += 1
                }
            else {
                starcount -= 4
                spacecount += 2
            }
        }
        spacecount = length;
        for _ in 1...Int(wysokoscPnia) { //3 to wysokość pnia
            for _ in 1...spacecount-1 {
                print(" ",terminator: "")
            }
            for _ in 1...3 {
                print("#",terminator: "")
            }
        print()
        }
    }
    
    func ozdobyDoKupienia(){
        var sum: Int = 0
        for _ in 1...liczbaPoziomow{
            sum += 1
        }
        sum*=wysokosc
        print("Liczba p")
    }
}
