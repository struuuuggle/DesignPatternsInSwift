//
//  Border.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// 「飾り枠」を表すプロトコル
protocol Border: DecoratorDisplay {
    /// この飾り枠が包んでいる「中身」を指す
    var display: DecoratorDisplay { get }
}
