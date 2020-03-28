//
//  Manager.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/03.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Prototype {
    class Manager {
        private var showCase: [String: PrototypeProduct] = [:]
        
        func register(name: String, prototype: PrototypeProduct) {
            self.showCase[name] = prototype
        }
        
        func create(protoName: String) -> PrototypeProduct {
            let p = showCase[protoName]!
            return p.createClone()
        }
    }    
}
