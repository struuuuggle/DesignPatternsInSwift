//
//  StrategyMain.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct StrategyMain {
    static func main() {
        let player1 = Player(name: "Taro", strategy: WinningStrategy())
        let player2 = Player(name: "Hana", strategy: ProbStrategy())
        
        (0..<10000).forEach { _ in
            let nextHand1 = player1.nextHand()
            let nextHand2 = player2.nextHand()
            
            if nextHand1.isStrongerThan(nextHand2) {
                print("Winner: \(player1.toString())")
                player1.win()
                player2.lose()
            } else if nextHand2.isStrongerThan(nextHand1) {
                print("Winner: \(player2.toString())")
                player1.lose()
                player2.win()
            } else {
                print("Even...")
                player1.even()
                player2.even()
            }
        }
        
        print("Total result:")
        print(player1.toString())
        print(player2.toString())
    }
}
