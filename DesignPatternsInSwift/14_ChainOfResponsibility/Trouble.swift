//
//  Trouble.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension ChainOfResponsibility {
    /// 発生したトラブルを表現するクラス
    ///
    /// - number: トラブル番号
    class Trouble: CustomStringConvertible {
        /// トラブル番号
        var number: Int
        
        init(_ number: Int) {
            self.number = number
        }
        
        var description: String {
            "[Trouble \(number)]"
        }
    }
}
