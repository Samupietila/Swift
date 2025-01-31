//
//  ContentView.swift
//  LaskuriAssignment
//
//  Created by Samu Pietilä työ on 31.1.2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(Counter.self) private var counter
    @State private var inputValue: String = ""
    var body: some View {
        VStack {
            Text("CounterApp")
                .padding()
                .font(Font.system(size: 50))
            Text("Counter Value:  \(counter.value)")
                .padding()
                .font(Font.system(size: 30))
            HStack {
                Button(action: counter.increment){
                    Text("Increment")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                }
                Button(action: counter.decrement){
                    Text("Decrement")
                        .padding()
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(100)
                }}
            TextField("Step: ", text: $inputValue)
                .padding()
                .keyboardType(.numberPad)
                .onSubmit {
                    counter.setStep(Int(inputValue) ?? counter.step)
                }
        }
    }
}
#Preview {
    ContentView()
        .environment(Counter())
}
