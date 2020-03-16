//
//  LimitSupport.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension ChainOfResponsibility {
    
    /// limitで指定した番号未満のトラブルを解決するクラス
    class LimitSupport: Support {
        /// toruble番号がlimit未満ならこのクラスはトラブルを解決できる
        private let limit: Int
        
        init(name: String, limit: Int) {
            self.limit = limit
            super.init(name: name)
        }
        
        override func resolve(_ trouble: Trouble) -> Bool {
            trouble.number < limit
        }
    }
}
