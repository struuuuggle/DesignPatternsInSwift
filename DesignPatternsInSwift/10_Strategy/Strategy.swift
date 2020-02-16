//
//  Strategy.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/17.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol Strategy {
    func nextHand() -> Hand
    func study(win: Bool)
}
