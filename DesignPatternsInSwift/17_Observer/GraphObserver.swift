//
//  GraphObserver.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Observer {
    /// 観察した数を"*****"のような簡易グラフで表示する
    class GraphObserver: BaseObserver {
        func update(generator: NumberGenerator) {
            print("GraphObserver:", terminator: "")
            (0..<generator.getNumber()).forEach { _ in
                print("*", terminator: "")
            }
            lineBreak()
            sleep(1)
        }
    }
}
