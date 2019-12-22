//
//  AdapterMain.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/23.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

struct AdapterMain {
    static func main() {
        let p = PrintBanner(message: "Hello")
        p.printWeak()
        p.printStrong()
    }
}
