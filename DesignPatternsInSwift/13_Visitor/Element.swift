//
//  Element.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// Visitorを受け入れるインターフェース
protocol Element {
    func accept(_ visitor: VisitorProtocol)
}
