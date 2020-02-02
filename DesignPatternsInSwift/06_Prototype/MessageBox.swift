//
//  MessageBox.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/03.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class MessageBox: PrototypeProduct {
    
    private var decoChar: String
    
    init(decoChar: String) {
        self.decoChar = decoChar
    }
    
    func use(s: String) {
        let length = s.count
        (0..<length+2).forEach { _ in
            print(decoChar, terminator: "")
        }
        print("")
        print(decoChar + "　" + s + "　" + decoChar)
        
        for _ in 0..<length+2 {
            print(decoChar, terminator: "")
        }
        print("")
    }
    
    func createClone() -> PrototypeProduct {
        return copy() as! PrototypeProduct
    }
}

extension MessageBox: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return MessageBox(decoChar: self.decoChar)
    }
}
