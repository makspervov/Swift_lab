//
//  main.swift
//  lab10
//
//  Created by student on 12/12/2022.
//

import Foundation

//Zadanie 1

//func losujLiczbe() -> [Int] {
//    var tab: [Int] = []
//    for _ in 0..<3{
//        tab.append(Int.random(in: 0..<250))
//    }
//return tab
//}
//var los = losujLiczbe()
//print("Wygenerowane liczby to \(los)")
//
//func maxNum(tab: [Int]) -> Int{
//    var max = tab.max()
//    return max!
//}
//print("Max: \(maxNum(tab: los))")
//
//func minNum(tab: [Int]) -> Int{
//    var min = tab.min()
//    return min!
//}
//print("Min: \(minNum(tab: los))")
//
//func minmax(tab: [Int]) -> [Int]{
//    var tab_w: [Int] = []
//    tab_w.append(tab.min()!)
//    tab_w.append(tab.max()!)
//    return tab_w
//}
//print("Min & Max: \(minmax(tab: los))")

//Zadanie 2

//func menu() -> String{
//    var text = """
//MENU
//1. Dodawanie
//2. Odejmowanie
//3. Mnożenie
//4. Dzielenie
//5. Pierwiastkowanie
//"""
//    return text
//}
//
//func dodawanie(a: Float, b: Float) -> Float{
//    return a + b
//}
//
//func odejmowanie(a: Float, b: Float) -> Float{
//    return a - b
//}
//
//func mnozenie(a: Float, b: Float) -> Float{
//    return a * b
//}
//
//func dzielenie(a: Float, b: Float) -> Float{
//    if (b == 0){
//        fatalError("Nie można dzielić przez zero")
//    }
//    else{
//        return a / b
//    }
//}
//
//func pierwiastkowanie(a: Float, b: Float) -> Float{
//    return pow(a, 1/b)
//}
//
//print("Podaj 1 liczbe: ")
//var a = Float(readLine()!)!
//print("Podaj 2 liczbe: ")
//var b = Float(readLine()!)!
//print(menu())
//print("Wybierz opcje: ")
//var set = Float(readLine()!)!
//if (set > 0 && set < 6){
//    switch(set){
//    case 1:
//        print(dodawanie(a: a, b: b))
//    case 2:
//        print(odejmowanie(a: a, b: b))
//    case 3:
//        print(mnozenie(a: a, b: b))
//    case 4:
//        if(b == 0){
//            fatalError("Nie można dzielić się przez zero")
//        }
//        else{
//            print(dzielenie(a: a, b: b))
//        }
//    case 5:
//        print(pierwiastkowanie(a: a, b: b))
//    default:
//        print("Nie ta opcja")
//    }
//}

//Zadanie 3

//func wyczytacznie()-> (Int,Int,Int,Int){
//    print("Podaj x1: ")
//    var x1 = Int(readLine()!)!
//    print("Podaj y1: ")
//    var y1 = Int(readLine()!)!
//    print("Podaj x2: ")
//    var x2 = Int(readLine()!)!
//    print("Podaj y2: ")
//    var y2 = Int(readLine()!)!
//    return (x1,y1,x2,y2)
//}
//func odleglosc(x1:Int ,y1: Int, x2: Int,y2:Int) ->(Float){
//    var odl = pow(pow(Float(x2-x1),2) + pow(Float(y2-y1),2),1/2)
//    return odl
//}
//
//
//var x1,y1,x2,y2: Int
//(x1,y1,x2,y2) = wyczytacznie()
//print(odleglosc(x1: x1, y1: y1, x2: x2, y2: y2))
//
//func cwiartka(x1:Int, y1:Int)-> Int{
//    if(x1>=0 && y1>=0){
//        return 1
//    }
//    if(x1<0 && y1>=0){
//        return 2
//    }
//    if(x1<0 && y1<0){
//        return 3
//    }
//    if(x1>=0 && y1<0){
//        return 4
//    }
//    return 0
//}
//print("Cwiartka \(cwiartka(x1: x1, y1: y1))")

//Zadanie 4

func tab()-> [Float]{
    print("Podaj liczbę elementów: ")
    var num = Int(readLine()!)!
    var elem: Float
    var tab: [Float] = []
    for i in 0..<num{
        print("Podaj \(i+1) element")
        elem = Float(readLine()!)!
        tab.append(elem)
    }
    return tab
}
var arr = tab()
print("\n\(arr)")

func minmaxavr(tab: [Float]) -> [Float]{
    var tab_w: [Float] = []
    tab_w.append(tab.min()!)
    tab_w.append(tab.max()!)
    tab_w.append(Float(tab.reduce(0, +)) / Float(tab.count))
    return tab_w
}
print("\nMin, Max, Average: \(minmaxavr(tab: arr))")

//func zamiana(tab : [Int])-> [Int]{
//    var (max,maxindeks) = max(tab: tab)
//    var (min,minindex) = min(tab:tab)
//    var t = arr[maxindeks]
//}
