//
//  Memento.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/12.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Game{}

extension Game {
    /// 主人公の状態を表現するクラス
    class Memento {
        /// 所持金
        var money: Int
        /// フルーツ
        var fruits = [String]()

        init(money: Int) {
            self.money = money
        }

        init(money: Int, fruits: [String]) {
            self.money = money
            self.fruits = fruits
        }
    }
}

extension Game.Memento {
    /// 所持金を得る
    ///
    /// Narrow Interface (狭いインターフェース)
    func getMoney() -> Int {
        money
    }
    /// フルーツを追加する
    ///
    /// Wide Interface (広いインターフェース)
    func addFruit(_ fruit: String) {
        fruits.append(fruit)
    }
    /// フルーツを得る
    ///
    /// Wide Interface (広いインターフェース)
    func getFruits() -> [String] {
        fruitsClone()
    }
    /// フルーツのクローンを作成する
    ///
    /// Wide Interface (広いインターフェース)
    private func fruitsClone() -> [String] {
        copy() as! [String]
    }
}

extension Game.Memento: NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        let memento = Game.Memento(money: 0, fruits: fruits)
        return memento.fruits
    }
}
