//
//  Gamer.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/12.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

fileprivate enum Fruits: String, CaseIterable {
    case apple = "リンゴ"
    case grape = "ぶどう"
    case banana = "バナナ"
    case orange = "みかん"
}

extension Game {
    /// ゲームを行う主人公を表すクラス
    class Gamer {
        private var money: Int
        private var fruits = [String]()

        init(money: Int) {
            self.money = money
        }
    }
}

extension Game.Gamer {
    /// 現在の所持金を得る
    func getMoney() -> Int {
        money
    }
    /// 賭け - ゲームの進行
    ///
    /// サイコロの目
    /// - 1: 所持金が増える
    /// - 2: 所持金が半分になる
    /// - 6: フルーツをもらう
    /// - それ以外: 何も起きない
    func bet() {
        let dice = Int.random(in: 1...6)
        switch dice {
        case 1:
            money += 100
            print("所持金が増えました。")
        case 2:
            money /= 2
            print("所持金が半分になりました。")
        case 6:
            let fruit = getFruit()
            fruits.append(fruit)
            print("フルーツ(\(fruit))をもらいました。")
        default:
            print("何も起こりませんでした。")
        }
    }
    /// スナップショットを撮る
    ///
    /// フルーツは美味しいものだけを保存
    func createMemento() -> Game.Memento {
        Game.Memento(
            money: money,
            fruits: fruits.filter { $0.hasPrefix("おいしい") }
        )
    }
    /// アンドゥを行う
    func restoreMemento(memento: Game.Memento) {
        money = memento.money
        fruits = memento.getFruits()
    }
    /// フルーツを1個得る
    private func getFruit() -> String {
        let prefix = Bool.random() ? "おいしい" : ""
        return prefix + Fruits.allCases.randomElement()!.rawValue
    }
}

extension Game.Gamer: CustomStringConvertible {
    var description: String {
        "[money = \(money), fruits = \(fruits)]"
    }
}
