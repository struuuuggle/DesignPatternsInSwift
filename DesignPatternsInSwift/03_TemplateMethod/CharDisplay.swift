//
//  CharDisplay.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension TemplateMethod {
    struct CharDisplay: AbstractDisplay {
        var char: String // char allows only 1 character
        
        func open() {
            Swift.print("<<", terminator: "")
        }
        
        func print() {
            Swift.print(char, terminator: "")
        }
        
        func close() {
            Swift.print(">>")
        }
    }
}
