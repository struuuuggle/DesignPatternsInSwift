//
//  DigitObserver.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Observer {
    /// 観察した数を「数字」で表示する
    class DigitObserver: BaseObserver {
        func update(generator: NumberGenerator) {
            print("DigitObserver: \(generator.getNumber())")
            sleep(1)
        }
    }
}
