//
//  Player.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class Player {
    private let name: String
    private let strategy: Strategy
    private var winCount: Int = 0
    private var loseCount: Int = 0
    private var gameCount: Int = 0
    
    init(name: String, strategy: Strategy) {
        self.name = name
        self.strategy = strategy
    }
    
    func nextHand() -> Hand {
        strategy.nextHand()
    }
    
    func win() {
        strategy.study(win: true)
        winCount += 1
        gameCount += 1
    }
    
    func lose() {
        strategy.study(win: false)
        loseCount += 1
        gameCount += 1
    }
    
    func even() {
        gameCount += 1
    }
    
    func toString() -> String {
        "[\(name):\(gameCount) games, win:lost \(winCount):\(loseCount)]"
    }
}
