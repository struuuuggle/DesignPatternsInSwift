//
//  Tray.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension AbstractFactory {
    /// 複数のLinkやTrayを集めて人まとまりにしたものを表すクラス
    class Tray: Item {
        var tray: [Item] = []
        
        override init(caption: String) {
            super.init(caption: caption)
        }
        
        /// LinkやTrayを集めるメソッド
        func add(item: Item) {
            self.tray.append(item)
        }        
    }
}
