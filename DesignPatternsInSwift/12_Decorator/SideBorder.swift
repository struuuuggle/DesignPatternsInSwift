//
//  SideBorder.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Decorator {
    /// 左右に飾りをつける
    struct SideBorder: Border {
        var display: DecoratorDisplay
        let boarderCharacter: String
        
        /// 中身の文字の文字数に、両側の飾り文字分(2)を加えた数を列数として返す
        func getcolumns() -> Int {
            1 + display.getcolumns() + 1
        }
        
        /// 行数は中身の行数に同じ
        func getRows() -> Int {
            display.getRows()
        }
        
        /// 指定行の内容は、中身の指定行の両側に飾り文字をつけたもの
        func getRowText(_ row: Int) -> String? {
            guard let content = display.getRowText(row) else { fatalError() }
            
            return boarderCharacter + content + boarderCharacter
        }
    }
}
