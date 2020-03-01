//
//  FullBorder.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Decorator {
    /// 上下左右に飾りをつける
    struct FullBorder: Border {
        var display: DecoratorDisplay
        
        /// 中身の文字の文字数に、両側の飾り文字分(2)を加えた数を列数として返す
        func getcolumns() -> Int {
            1 + display.getcolumns() + 1
        }
        
        /// 中身の行数に上下の飾りの文字数分を加えた数を行数として返す
        func getRows() -> Int {
            1 + display.getRows() + 1
        }
        
        /// 指定した行の内容
        func getRowText(_ row: Int) -> String? {
            if row == 0 { // 枠の上端
                return "+" + makeLine(char: "-", count: display.getcolumns()) + "+"
            } else if row == display.getRows() + 1 { // 枠の下端
                return "+" + makeLine(char: "-", count: display.getcolumns()) + "+"
            } else {
                return "|" + (display.getRowText(row - 1) ?? "") + "|"
            }
        }
        
        /// 文字charをcount個連続させた文字列を作る
        private func makeLine(char: String, count: Int) -> String {
            var result: String = ""
            for _ in 0..<count {
                result.append(char)
            }
            return result
        }
    }
}
