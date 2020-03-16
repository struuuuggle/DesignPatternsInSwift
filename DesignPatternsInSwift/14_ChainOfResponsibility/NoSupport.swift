//
//  NoSupport.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension ChainOfResponsibility {
    
    /// Supportクラスのサブクラス
    ///
    /// 「自分は何も問題を処理しない」というクラス
    class NoSupport: Support {
        
        override func resolve(_ trouble: Trouble) -> Bool {
            false // 自分は何もしない
        }
    }
}
