//
//  Client+Observer.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Observer {
    static func main() {
        var generator = RandomNumberGenerator()
        let o1 = DigitObserver()
        let o2 = GraphObserver()

        generator.addObserver(o1)
        generator.addObserver(o2)
        generator.execute()
    }
}
