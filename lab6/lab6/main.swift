//
//  main.swift
//  lab6
//
//  Created by student on 14/11/2022.
//

import Foundation
/*
print("Zadanie 1")

var tab: [Double] = Array(repeating: 1.0, count: 12)
for i in tab {
    print(i)
}

//Rozwiązanie: a)zamieniamy Int na Double LUB b)w repeating wpisujemy liczbę całkowitą*/
/*
print("\nZadanie 2")

var arr: [Int] = Array(repeating: (Int.random(in: 1..<100)), count: 10)
print(arr)

print("Wpisz liczbę: ")
var licz1 = readLine()!
arr.insert(Int(licz1)!, at: 0)
print("Liczba ", Int(licz1)! ," wstawiona na pozycji 0:")
print(arr)

print("\nWpisz liczbę: ")
var licz2 = readLine()!
var randPos = Int.random(in: 0...arr.count-1)
arr.insert(Int(licz2)!, at: randPos)
print("Liczba ", Int(licz2)! ," wstawiona na pozycji ", randPos, ":")
print(arr)
*/
/*
print("\nZadanie 3")

print("Podaj rozmiar tablicy:")
var i = Int(readLine()!)!
guard i>0 else{
    fatalError("Liczba mniejsza lub równa 0")
}
var arr2: [Int] = Array(repeating: 0, count: i)
print("Podaj liczbę:")
for i in stride(from: 0, to: i, by: 1)
{
    arr2[i] = Int(readLine()!)!
}
print(arr2)
var a = Int(readLine()!)!

if(a == arr2[arr2.count - 1]){
    print("Liczba \(a) jest na końcu tablicy")
}
else if (a == arr2[0]){
    print("Liczba \(a) jest na początku tablicy")
}
else{
    print("Liczba \(a) nie jest ani na początku, ani na końcu tablicy")
}
*/
/*
print("\nZadanie 4")

print("Podaj rozmiar tablicy:")
var i = Int(readLine()!)!
guard i>0 else{
    fatalError("Liczba mniejsza lub równa 0")
}
var tab1: [Int] = Array(repeating: 0, count: i)
var tab2: [Int] = Array(repeating: 0, count: i)
for i in stride(from: 0, to: i, by: 1)
{
    tab1[i] = Int.random(in: 1...20)
    tab2[i] = Int.random(in: 1...20)
}
print("Tablica 1: \(tab1) \nTablica 2: \(tab2) \n")

for i in stride(from: 0, to: i, by: 1)
{
    if tab1.contains(tab2[i]){
        print("\(i)) Element \(tab2[i]) występuje w tabeli")
    }
    else {
        print("\(i)) Element \(tab2[i]) nie występuje w tabeli")
    }
}
*//*
print("Zadanie 5")
let mac: [[Int]] = [[10, 20, 30], [40, 50, 60]]
for i in 0 ..< mac.count {
    for j in 0 ..< mac[i].count{
        print("\(mac[i][j])", terminator:" ")
    }
    print()
}
*/
