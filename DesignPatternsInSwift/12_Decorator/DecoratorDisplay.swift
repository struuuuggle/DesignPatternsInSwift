//
//  DecoratorDisplay.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// 複数行からなる文字列を表示するためのプロトコル
protocol DecoratorDisplay {
    /// 横の文字列を得る
    func getcolumns() -> Int
    
    /// 縦の行数を得る
    func getRows() -> Int
    
    // row番目の文字列を得る
    func getRowText(_ row: Int) -> String?
}

extension DecoratorDisplay {
    /// 全部表示
    func show() {
        (0..<getRows()).forEach { print(getRowText($0) ?? "") }
    }
}

