//
//  Visitor+File.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Visitor {
    class File: Entry {
        private let name: String
        private let size: Int
        
        init(name: String, size: Int) {
            self.name = name
            self.size = size
        }
        
        func getName() -> String {
            name
        }
        
        func getSize() -> Int {
            size
        }
            
        func accept(_ visitor: VisitorProtocol) {
            visitor.visit(file: self)
        }                
    }
}
