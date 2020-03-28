//
//  Hand.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

let HANDVALUE_GUU = 0
let HANDVALUE_CHO = 1
let HANDVALUE_PAA = 2

extension StrategyMain {
    class Hand {
        static let hand = [
            Hand(handValue: HANDVALUE_GUU),
            Hand(handValue: HANDVALUE_CHO),
            Hand(handValue: HANDVALUE_PAA)
        ]
        
        private let name = ["グー", "チョキ", "パー"]
        private let handValue: Int
        
        init(handValue: Int) {
            self.handValue = handValue
        }
        
        static func getHand(of handValue: Int) -> Hand {
            self.hand[handValue]
        }
        
        func isStrongerThan(_ hand: Hand) -> Bool {
            return fight(hand) == 1
        }
        
        func isWeakerThan(_ hand: Hand) -> Bool {
            return fight(hand) == -1
        }
        
        private func fight(_ hand: Hand) -> Int {
            if self.handValue == hand.handValue { // 引き分け
                return 0
            } else if ((self.handValue + 1) % 3 == hand.handValue) { // 勝ち
                return 1
            } else { // 負け
                return -1
            }
        }
        
        func toString() -> String {
            return name[self.handValue]
        }
    }    
}
