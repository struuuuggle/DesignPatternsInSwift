//
//  Link.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// HTMLのハイパーリンクを抽象的に表現したクラス
class Link: Item {
    var url: String
    
    init(caption: String, url: String) {
        self.url = url
        super.init(caption: caption)
    }
}
