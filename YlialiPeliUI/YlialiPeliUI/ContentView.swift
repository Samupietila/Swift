//
//  ContentView.swift
//  YlialiPeliUI
//
//  Created by Samu Pietilä on 31.1.2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(YliAli.self) private var yap
    @State var result: PeliTulos? = nil
    @State private var numbers: [Int] = Array(1...10)
    @State private var guessedNumbers: Set<Int> = []
    
    let gridLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()),GridItem(.flexible())]
    var body: some View {
    
        VStack {
            if result?.str != "JEP" {
                VStack {
                    Text("YliAliPeli")
                        .padding()
                        .font(Font.system(size: 50))
                    Text("Arvaa numero 1-16 väliltä!")
                        .padding()
                        .font(Font.system(size: 20))
                    LazyVGrid(columns: gridLayout, spacing: 1) {
                        ForEach(numbers, id: \.self) { number in
                            if !guessedNumbers.contains(number) {
                                Button(action: {
                                    result = yap.arvaa(arvaus: number)
                                    guessedNumbers.insert(number)
                                }) {
                                    Text("\(number)")
                                        .font(.title)
                                        .frame(width: 60, height: 60)
                                        .background(Color.blue)
                                        .foregroundColor(.white)
                                        .cornerRadius(10)
                                        .padding(.bottom)
                                }
                            }
                        }
                    }
                    Text("Arvauksesi tulos: \(result?.str ?? "")")
                }
                .padding()
            } else{
                VStack {
                    Text("ONNEA!")
                        .padding()
                        .font(Font.system(size: 80))
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
        .environment(YliAli(low: 1, high: 10))
}
