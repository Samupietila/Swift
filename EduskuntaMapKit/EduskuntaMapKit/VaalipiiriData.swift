//
//  VaalipiiriData.swift
//  EduskuntaMapKit
//
//  Created by Samu Pietilä on 7.3.2025.
//

import Foundation
import SwiftData
import _SwiftData_SwiftUI

@Observable
class VaalipiiriData {
    var vaalipiirit: [VaalipiiriProfile] = load("vaalipiirit.json")
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Could not find \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Could not load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        let decodedData = try decoder.decode(T.self, from: data)
        return decodedData
    } catch {
        fatalError("Could not parse \(filename) as \(T.self):\n\(error)")
    }
}
