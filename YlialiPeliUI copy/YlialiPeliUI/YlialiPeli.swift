//
//  YlialiPeli.swift
//  YlialiPeliUI
//
//  Created by Samu Pietilä on 31.1.2025.
//

import Foundation

enum PeliTulos {
    case Ali, Yli, Osuma
    var str: String {
        switch(self) {
            case .Ali: "Alle"
            case .Yli: "Yli"
            case .Osuma: "JEP"
        }
    }
}
@Observable
class YliAli {
let secret: Int
let low: Int
let high: Int
private(set) var guesses:
Array<Int> = []
init(low: Int, high: Int) {
self.low = low
self.high = high
self.secret =
(low...high).randomElement() ?? low
}
func arvaa(arvaus: Int) ->
PeliTulos {
guesses.append(arvaus)
if arvaus < secret {
return PeliTulos.Ali
} else if arvaus > secret {
return PeliTulos.Yli
} else {
return PeliTulos.Osuma
}
}
func tries() -> Int {
return guesses.count
}
}
