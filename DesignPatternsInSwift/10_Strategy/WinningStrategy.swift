//
//  WinningStrategy.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension StrategyMain {
    class WinningStrategy: Strategy {
        private var won: Bool = false
        private var prevHand: Hand = Hand(handValue: 0)
        
        func nextHand() -> Hand {
            if !won {
                prevHand = Hand.getHand(of: Int.random(in: 0...2))
            }
            return prevHand
        }
        
        func study(win: Bool) {
            self.won = win
        }
    }    
}

