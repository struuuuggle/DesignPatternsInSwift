//
//  StringDisplay.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct StringDisplay: AbstractDisplay {
    private var str: String
    private var width: Int
    
    init(str: String) {
        self.str = str
        self.width = str.lengthOfBytes(using: .japaneseEUC)
    }
    
    func open () {
        self.printLine()
    }
    
    func print() {
        Swift.print("|\(self.str)|")
    }
    
    func close() {
        self.printLine()
    }
    
    private func printLine() {
        Swift.print("+", terminator: "")
        (0..<width).forEach { _ in
            Swift.print("-", terminator: "")
        }
        Swift.print("+")
    }
}
