//
//  ContentView.swift
//  YlialiPeliUI
//
//  Created by Samu Pietilä on 31.1.2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(YliAli.self) private var yap
    @State private var inputValue: String = ""
    @State var result: PeliTulos? = nil
    var body: some View {
        VStack {
            Text("YliAliPeli")
                            .padding()
                            .font(Font.system(size: 50))
            Text("Arvaa numero 1-10 väliltä!")
                            .padding()
                            .font(Font.system(size: 20))
            TextField("Arvauksesi", text: $inputValue)
                .padding()
                .frame(maxWidth: 200, alignment: .center)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.numberPad)
                .onSubmit {
                    result = yap.arvaa(arvaus: Int(inputValue) ?? 0)
                }
            Text("Arvauksesi tulos: \(result?.str ?? "")")
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .environment(YliAli(low: 1, high: 10))
}
