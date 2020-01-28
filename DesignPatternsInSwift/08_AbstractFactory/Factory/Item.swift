//
//  Item.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// 項目
class Item {
    /// 見出し
    var caption: String

    init(caption: String) {
        self.caption = caption
    }

    func makeHTML() -> String {
        fatalError()
    }
}
