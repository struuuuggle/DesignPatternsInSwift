//
//  Prototype.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/03.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct Prototype {
    static func main() {
        let manager = Manager()
        
        let upen = UnderlinePen(char: "-")
        let mbox = MessageBox(decoChar: "⚠️")
        let sbox = MessageBox(decoChar: "🚨")
        
        manager.register(name: "string message", prototype: upen)
        manager.register(name: "warning box", prototype: mbox)
        manager.register(name: "slash box", prototype: sbox)
        
        let p1 = manager.create(protoName: "string message")
        p1.use(s: "READ ME")
        let p2 = manager.create(protoName: "warning box")
        p2.use(s: "ＣＡＴＩＯＮ")
        let p3 = manager.create(protoName: "slash box")
        p3.use(s: "ＷＡＴＣＨ　ＯＵＴ")
    }
}
