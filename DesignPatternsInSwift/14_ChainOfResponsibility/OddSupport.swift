//
//  OddSupport.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension ChainOfResponsibility {
    
    /// 奇数番号のトラブルを処理するクラス
    ///
    /// resolveメソッドで受け取ったtroubleのnumberが奇数なら、このクラスはトラブルを解決できる
    class OddSupport: Support {
        
        override func resolve(_ trouble: Trouble) -> Bool {
            trouble.number % 2 == 1
        }
    }
}
