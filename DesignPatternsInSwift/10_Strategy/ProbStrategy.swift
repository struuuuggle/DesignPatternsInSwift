//
//  ProbStrategy.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class ProbStrategy: Strategy {
    private var prevHandValue = 0
    private var currentHandValue = 0
    /// 過去の勝敗を反映した確率計算のための表
    /// - history[前回に出した手][今回出す手]
    private var history: [[Int]] = [
        [1, 1, 1],
        [1, 1, 1],
        [1, 1, 1]
    ]
    
    func nextHand() -> Hand {
        let bet = Int.random(in: 0...getSum(currentHandValue))

        var handValue: Int
        if bet < history[currentHandValue][0] {
            handValue = 0
        } else if bet < history[currentHandValue][0] + history[currentHandValue][1] {
            handValue = 1
        } else {
            handValue = 2
        }
        
        prevHandValue = currentHandValue
        currentHandValue = handValue
        return Hand.getHand(of: handValue)
    }
    
    private func getSum(_ handValue: Int) -> Int {
        history[handValue].reduce(0) { $0 + $1 }
    }
    
    /// nextHand()で返した手の勝敗を元に、historyプロパティを更新
    func study(win: Bool) {
        if win {
            history[prevHandValue][currentHandValue] += 1
        } else {
            history[prevHandValue][(currentHandValue + 1) % 3] += 1
            history[prevHandValue][(currentHandValue + 2) % 3] += 1
        }
    }
}
