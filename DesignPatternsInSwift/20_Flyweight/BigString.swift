//
//  BigString.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Flyweight {

    /// BigCharを集めた「大きな文字列」
    final class BigString {
        /// 「大きな文字」の配列
        private var bigChars: [BigChar?]

        init(string: String) {
            bigChars = Array(repeating: nil, count: string.count)

            let factory = Flyweight.BigCharFactory.getInstance()

            (0 ..< bigChars.count).forEach { i in
                let index = string.index(string.startIndex, offsetBy: i)
                bigChars[i] = factory.getBigChar(charName: string[index].description)
            }
        }

        /// 表示
        func print() {
            bigChars.forEach { $0?.print() }
        }
    }
}
