//
//  ContentView.swift
//  Zadanie 2
//
//  Created by student on 03/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var a : String = ""
    @State private var b : String = ""
    @State private var c : String = ""
    @State private var sum : String = ""
    @State private var average : String = ""
    
    var body: some View {
        VStack {
            TextField("a", text:$a)
            TextField("b", text:$b)
            TextField("c", text:$c)
            Button("Press"){
                clicked.toggle()
            }
            if clicked{
                var suma = a+b+c
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
