//
//  main.swift
//  lab3
//
//  Created by student on 17/10/2022.
//

import Foundation

print("Laboratorium 3\nZadanie 1\n\n")

var jednoliniowy = "Ala ma kota"
var wieloliniowy = """

Swift is a powerful and intuitive programming language for
    iOS,
        iPadOS,
            macOS,
                tvOS,
                    and watchOS.
"""
print (jednoliniowy)
print (wieloliniowy)



print("\n\nZadanie 2\n\n")

var tekst = """
\t"Nauka kodowania to nie tylko nauka języka technologii.\n
\tTo odkrywanie nowych sposobów myślenia\n
\ti urzeczywistnianie rozmaitych koncepcji."\n
"""
print(tekst)

print("\n\nZadanie 3 (w domu to zrób)")
/*
print("Please enter your first name")
var name = readLine()!

print("Please enter your last name")
var surname = readLine()!

print("Please enter your patronymic")
var patronymic = readLine()!

print("Please enter your year of birth")
var year_of_birth = readLine()!

var text = surname + name + patronymic + year_of_birth
print(text)

//usuwamy imię ojca
let range_patronymic = text.index(text.startIndex, offsetBy: 41) ..< text.index(text.startIndex, offsetBy: 63)
text.removeSubrange(range_patronymic)

print("\n\tPATRONYMIC IS DELETED")
print(text)

//usuwamy rok urodzenia i wpisujemy wiek
let range_year_of_birth = text.index(text.startIndex, offsetBy: 64) ..< text.index(before: <#T##String.Index#>)
text.removeSubrange(range_year_of_birth)

let Years = Int(year_of_birth)!
text.append("Year: \(2022 - Years)")
print("\n\tYEAR OF BIRTH IS EDITED")
print(text)
*/

