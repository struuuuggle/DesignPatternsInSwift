//
//  Client+Flyweight.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/26.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Client {
    /// 引数で与えられた文字列をもとにBigStringのインスタンスを作って表示する
    static func flyweight(numberSequence: String) {
            let bs = Flyweight.BigString(string: numberSequence)
            bs.print()
    }
}

/**
 実行結果: Client.flyweight(numberSequence: "1212123")

 ......##........
 ..######........
 ......##........
 ......##........
 ......##........
 ......##........
 ..##########....
 ................
 ....######......
 ..##......##....
 ..........##....
 ......####......
 ....##..........
 ..##............
 ..##########....
 ................
 ......##........
 ..######........
 ......##........
 ......##........
 ......##........
 ......##........
 ..##########....
 ................
 ....######......
 ..##......##....
 ..........##....
 ......####......
 ....##..........
 ..##............
 ..##########....
 ................
 ......##........
 ..######........
 ......##........
 ......##........
 ......##........
 ......##........
 ..##########....
 ................
 ....######......
 ..##......##....
 ..........##....
 ......####......
 ....##..........
 ..##............
 ..##########....
 ................
 ....######......
 ..##......##....
 ..........##....
 ......####......
 ..........##....
 ..##......##....
 ....######......
 ................

 */
