//
//  main.swift
//  lab9
//
//  Created by student on 05/12/2022.
//

import Foundation
/*
print("Zadanie 1")
struct Complex{
    var a: Double   //real part
    var b: Double   //imaginary part
}

var x1 = Complex(a: 0, b: 0)
var x2 = Complex(a: 0, b: 0)

print("Write first complex number x1 (a+bi):")
x1.a = Double(readLine()!)!
x1.b = Double(readLine()!)!
print("FIRST: \(x1.a)+\(x1.b)i\n")
print("Write second complex number x1 (a+bi):")
x2.a = Double(readLine()!)!
x2.b = Double(readLine()!)!
print("SECOND: \(x2.a)+\(x2.b)i\n")

print("""
MENU
OPERATIONS:
    + Addition
    - Subtraction
    * Multiplication
    e - Exit
""")
guard var menu = readLine() else{
    fatalError("ERROR!")
}
var op = true
while(op){
    switch(menu){
    case "+":
        var sum = Complex(a: 0, b: 0)
        sum.a = (x1.a+x2.a)
        sum.b = (x1.b+x2.b)
        print("RESULT: \(sum.a) + \(sum.b)i")
        break
    case "-":
        var sub = Complex(a: 0, b: 0)
        sub.a = (x1.a-x2.a)
        sub.b = (x1.b-x2.b)
        print("RESULT: \(sub.a) + \(sub.b)i")
        break
    case "*":
        var multi = Complex(a: 0, b: 0)
        multi.a = ((x1.a*x2.a)-(x1.b*x2.b))
        multi.b = ((x1.a*x2.b)+(x1.b*x2.a))
        print("\n\nRESULT: \(multi.a) + \(multi.b)i")
        break
    case "e":
        print("Exiting...")
        op = false
        break
    default:
        print("ERROR!")
        break
    }
    if(menu != "e"){
        print("""
                
        OPERATIONS:
            + Addition
            - Subtraction
            * Multiplication
            e - Exit
        """)
        menu = readLine()!
    }
}*/
/*
print("Zadanie 2")
struct rzutOszczepem {
    var osoba: String
    var first: Float
    var second: Float
    var third: Float
}
var o1 = rzutOszczepem(osoba: "Somebody", first: 0, second: 0, third:0)
var o2 = rzutOszczepem(osoba: "Somebody", first: 0, second: 0, third:0)
var o3 = rzutOszczepem(osoba: "Somebody", first: 0, second: 0, third:0)
var o4 = rzutOszczepem(osoba: "Somebody", first: 0, second: 0, third:0)

print("Osoba 1:")
o1.osoba = readLine()!
print("Pierwszy rzut:")
o1.first = Float(readLine()!)!
print("Drugi rzut:")
o1.second = Float(readLine()!)!
print("Trzeci rzut:")
o1.third = Float(readLine()!)!
print("Osoba 2:")
o2.osoba = readLine()!
print("Pierwszy rzut:")
o2.first = Float(readLine()!)!
print("Drugi rzut:")
o2.second = Float(readLine()!)!
print("Trzeci rzut:")
o2.third = Float(readLine()!)!
print("Osoba 3:")
o3.osoba = readLine()!
print("Pierwszy rzut:")
o3.first = Float(readLine()!)!
print("Drugi rzut:")
o3.second = Float(readLine()!)!
print("Trzeci rzut:")
o3.third = Float(readLine()!)!
print("Osoba 4:")
o4.osoba = readLine()!
print("Pierwszy rzut:")
o4.first = Float(readLine()!)!
print("Drugi rzut:")
o4.second = Float(readLine()!)!
print("Trzeci rzut:")
o4.third = Float(readLine()!)!

var avgMax: Float = 0
var id: String = o1.osoba
avgMax = (o1.first + o1.second + o1.third)/3.0
var avgMin: Float = avgMin
if(o2.first + o2.second + o2.third/3.0 > avgMax){
    avgMax = o2.first + o2.second + o2.third/3.0
    id = o2.osoba
}
else{
    if(o3.first + o3.second + o3.third/3.0 > avgMax){
        avgMax = o3.first + o3.second + o3.third/3.0
        id = o3.osoba
    }
    else{
        if(o4.first + o4.second + o4.third/3.0 > avgMax){
            avgMax = o4.first + o4.second + o4.third/3.0
            id = o4.osoba
        }
    }
}
print("Najwyzsza srednia rzutow: \(id)")

if(o2.first + o2.second + o2.third/3.0 < avgMin){
    avgMin = o2.first + o2.second + o2.third/3.0
    id = o2.osoba
}
else{
    if(o3.first + o3.second + o3.third/3.0 < avgMin){
        avgMin = o3.first + o3.second + o3.third/3.0
        id = o3.osoba
    }
    else{
        if(o4.first + o4.second + o4.third/3.0 < avgMin){
            avgMin = o4.first + o4.second + o4.third/3.0
            id = o4.osoba
        }
    }
}

var tab: [rzutOszczepem] = []
tab.append(o1)
tab.append(o2)
tab.append(o3)
tab.append(o4)
print(tab)
for i in 0..<tab.count{
    if(id == tab[i].osoba){
        tab.remove(at: i)
    }
}
print(tab)*/
/*
print("Zadanie 3")
var samochody = Set<String>()

for i in 0..<6{
    print("Podaj model \(i)")
    guard let a = readLine() else{
        fatalError("ERROR!")
    }
    samochody.insert(a)
}
print(samochody)

var length: Int = samochody.count
while(length == samochody.count){
    print("Podaj model do usuniecia")
    guard let a = readLine() else{
        fatalError("ERROR!")
    }
    samochody.remove(a)
}
print(samochody)
*/
print("Zadanie 4")


var tab: [String] = ["Kowalczyk","Nowak","Kowal","Bogotowska", "Dąbrowski", "Chopin", "Agatowska"]

var student: [String: Int] = [:]
var nazwisko: String = ""
for i in 0..<5{
    nazwisko = tab[i]
    student[nazwisko] = Int.random(in: 0..<100)
}
print(student)

print("Podaj nazwisko:")
nazwisko = readLine()!
if(student[nazwisko] != nil){
    print(student[nazwisko])
}
else{
    print("Nie ma takiego studenta")
}

print(student)
print("Podaj nazwisko:")
nazwisko = readLine()!
if(student[nazwisko] != nil){
    student.removeValue(forKey: nazwisko)
}
else{
    print("Nie ma takiego studenta")
}
print(student)

print("Zadanie 5")

struct loty {
    var wylot: [String: String]
    var przylot: [String: String]
    var czas: Int
}

var daneLotow : [loty] = []
print("Podaj liczbe lotów")
var licz = Int(readLine()!)!
var l = loty(wylot: [String:String](), przylot: [String:String](), czas: 0)
var tmp = ""
for i in 0..<licz {
    print("Podaj id \(i+1) lotniska wylotu")
    tmp = readLine()!
    l.wylot[tmp] = ""
    print("Podaj nazwę \(i+1) lotniska wylotu")
    l.wylot[tmp] = readLine()!
    print("Podaj id \(i+1) lotniska przylotu")
    tmp = readLine()!
    l.przylot[tmp] = ""
    print("Podaj nazwę \(i+1) lotniska przylotu")
    l.przylot[tmp] = readLine()!
    print("Podaj czas lotu pomiedzy lotniskami")
    l.czas = Int(readLine()!)!
    daneLotow.append(l)
    l = loty(wylot: [String:String](), przylot: [String:String](), czas: 0)
}
print(daneLotow)
var sr = 0.0
for i in daneLotow {
    sr = sr + Double(i.czas)
}
sr = sr/3.0
print("Loty które trwaja dłużej niż średnia \(sr)")
for i in daneLotow {
    if Double(i.czas) > sr {
        print(i)
    }
}
