//
//  Main.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/16.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

let d1: Display = Display(impl: StringDisplayImpl(str: "Hello, Japan."))
let d2: Display = CountDisplay(impl: StringDisplayImpl(str: "Hello, World."))
let d3: CountDisplay = CountDisplay(impl: StringDisplayImpl(str: "Hello, Universe."))

d1.display()
d2.display()
d3.display()
d3.multiDisplay(times: 5)
