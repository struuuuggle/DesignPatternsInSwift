//
//  SpecialSupport.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension ChainOfResponsibility {
    
    /// 指定した番号のトラブルに限って処理するクラス
    class SpecialSupport: Support {
        /// trouble番号がnumberと同値ならこのクラスはトラブルを解決できる
        private let number: Int
        
        init(name: String, number: Int) {
            self.number = number
            super.init(name: name)
        }
        
        override func resolve(_ trouble: Trouble) -> Bool {
            trouble.number == number
        }
    }
}
