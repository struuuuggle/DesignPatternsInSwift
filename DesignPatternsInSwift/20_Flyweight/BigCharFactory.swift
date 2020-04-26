//
//  BigCharFactory.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Flyweight {

    /// BigCharのインスタンスを作成する工場
    final class BigCharFactory {
        /// すでに作ったBigCharのインスタンスを管理
        private var pool: [String: Flyweight.BigChar] = [:]
        /// シングルトン
        private static let shared = BigCharFactory()

        /// 唯一のインスタンスを得る
        static func getInstance() -> BigCharFactory {
            shared
        }

        /// BigCharのインスタンス生成(共有)
        ///
        /// サンプルコードではsynchronizedになっているが、一旦無視
        func getBigChar(charName: String) -> BigChar {
            guard let bigChar = pool[charName] else {
                let bc = BigChar(charName: charName) // ここでBigCharのインスタンスを生成
                pool[charName] = bc
                return bc
            }
            return bigChar
        }
    }
}
