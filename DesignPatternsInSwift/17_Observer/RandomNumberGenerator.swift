//
//  RandomNumberGenerator.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Observer {
    /// 乱数を生成するクラス
    class RandomNumberGenerator: NumberGenerator {
        internal var observers: [BaseObserver] = []
        /// 現在の数
        private var curentNumber: Int = 0

        func getNumber() -> Int {
            curentNumber
        }

        func execute() {
            (0..<20).forEach { _ in
                curentNumber = Int.random(in: 0...50)
                notifyObservers()
            }
        }
    }
}
