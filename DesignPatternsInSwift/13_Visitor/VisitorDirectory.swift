//
//  VisitorDirectory.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Visitor {
    class Directory: VisitorEntry {
        private let name: String
        private var directory: [VisitorEntry] = []
        private var count: Int = 0 // for next() method
        
        init(name: String) {
            self.name = name
        }
        
        func getName() -> String {
            name
        }
        
        func getSize() -> Int {
            directory.reduce(0) { $0 + $1.getSize() }
        }
        
        func add(_ entry: VisitorEntry) throws -> VisitorEntry {
            directory.append(entry)
            return self
        }
        
        /// 訪問者を受け入れる
        func accept(_ visitor: VisitorProtocol) {
            defer { count = 0 }
            visitor.visit(directory: self)
        }
    }
}

extension Visitor.Directory: Sequence, IteratorProtocol {
    
    func next() -> VisitorEntry? {
        defer { count += 1 }
        return count < directory.count ? directory[count] : nil
    }
}
