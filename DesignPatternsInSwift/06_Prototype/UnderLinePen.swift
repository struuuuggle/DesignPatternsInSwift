//
//  UnderLinePen.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/03.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

typealias UnderlinePen = Prototype.UnderlinePen

extension Prototype {
    class UnderlinePen: PrototypeProduct {
        private let char: String
        
        init(char: String) {
            self.char = char
        }
        
        func use(s: String) {
            let length = s.count
            print(s)
            for _ in 0..<length {
                print(char, terminator: "")
            }
            print("")
        }
        
        func createClone() -> PrototypeProduct {
            return copy() as! PrototypeProduct
        }
    }
}

extension UnderlinePen: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        return UnderlinePen(char: self.char)
    }
}
