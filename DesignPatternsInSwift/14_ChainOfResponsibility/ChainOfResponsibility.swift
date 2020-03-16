//
//  ChainOfResponsibility.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum ChainOfResponsibility {
    static func main() {
        let alice = NoSupport(name: "Alice")
        let bob = LimitSupport(name: "Bob", limit: 100)
        let charlie = SpecialSupport(name: "Charlie", number: 429)
        let diana = LimitSupport(name: "Diana", limit: 200)
        let elmo = OddSupport(name: "Elmo")
        let fred = LimitSupport(name: "Fred", limit: 300)
        
        // 連鎖の生成
        _ = alice
            .setNext(next: bob)
            .setNext(next: charlie)
            .setNext(next: diana)
            .setNext(next: elmo)
            .setNext(next: fred)
        
        // 様々なトラブルを生成
        for number in stride(from: 0, to: 500, by: 33) {
            alice.support(Trouble(number))
        }
        
        /**
         実行結果:
         [Trouble 0] is resolved by [Bob].
         [Trouble 33] is resolved by [Bob].
         [Trouble 66] is resolved by [Bob].
         [Trouble 99] is resolved by [Bob].
         [Trouble 132] is resolved by [Diana].
         [Trouble 165] is resolved by [Diana].
         [Trouble 198] is resolved by [Diana].
         [Trouble 231] is resolved by [Elmo].
         [Trouble 264] is resolved by [Fred].
         [Trouble 297] is resolved by [Elmo].
         [Trouble 330] cannot be resolved.
         [Trouble 363] is resolved by [Elmo].
         [Trouble 396] cannot be resolved.
         [Trouble 429] is resolved by [Charlie].
         [Trouble 462] cannot be resolved.
         [Trouble 495] is resolved by [Elmo].
         */
    }
}
