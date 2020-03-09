//
//  Entry.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol VisitorEntry: Element, CustomStringConvertible {

    func getName() -> String
    
    func getSize() -> Int
}

extension VisitorEntry {
    var description: String {
        "\(getName()) (\(getSize()))"
    }
}
