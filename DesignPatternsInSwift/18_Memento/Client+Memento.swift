//
//  Client+Memento.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/12.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Client {
    static func memento() {
        // 最初の所持金は100円
        let gamer = Game.Gamer(money: 100)
        // 最初の状態を保存しておく
        var memento = gamer.createMemento()

        (1...100).forEach { time in
            // 回数表示
            print("=== \(time)")
            // 現在の主人公の状態を表示
            print("現状: \(gamer)")

            // ゲームを進める
            gamer.bet()

            print("所持金は\(gamer.getMoney())円になりました。")

            if gamer.getMoney() > memento.getMoney() {
                print("    だいぶ増えたので、現在の状態を保存しておこう。")
                memento = gamer.createMemento()
            } else if gamer.getMoney() < memento.getMoney() / 2 {
                print("    だいぶ減ったので、以前の状態に復帰しよう。")
                gamer.restoreMemento(memento: memento)
            }

            // 時間待ち
            sleep(1)
            newLine()
        }
    }
}
