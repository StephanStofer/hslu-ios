//
//  DataProvider.swift
//  SwiftProgrammers
//
//  Created by Stephan Stofer on 20.09.21.
//

import Foundation

class DataProvider{
    static let sharedInstance = DataProvider()
    let names = ["Maria","Anna","Sandra","Ursula","Elisabeth","Ruth","Monika","Claudia","Nicole","Verena","Barbara","Andrea","Silvia","Daniela","Marie","Christine","Karin","Marianne","Laura","Sarah","Brigitte","Susanne","Erika","Rita","Margrit"]
    var memberNames : [String]
    var memberPersons : [Person]

    private init() {
        self.memberNames = Array(names[0...10])
        self.memberPersons = names.suffix(10).map{ (name) -> Person in return Person(firstName: name, lastName: String(name.reversed()).lowercased().capitalized, plz: Int.random(in: 1000..<10000))}
    }
}
