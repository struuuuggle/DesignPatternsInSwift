//
//  Decorator+StringDisplay.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/01.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Decorator {
    /// 一行の文字列を表示する
    struct StringDisplay: DecoratorDisplay {
        ///　表示文字列
        let string: String
        
        /// 文字数
        func getcolumns() -> Int {
            string.count
        }
        
        /// 行数は1
        func getRows() -> Int {
            1
        }
        
        /// rowが0のときのみ返す
        func getRowText(_ row: Int) -> String? {
            row == 0 ? string : nil
        }
    }
}

