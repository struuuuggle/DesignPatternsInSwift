//
//  Facade.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/22.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Facade {
    static func main() {
        /**
         Expected output:
         welcome.html is created for aurore@swift.com (username)
         */
        PageMaker.makeWelcomePage(address: "aurore@swift.com", fileName: "welcome.html")
    }
}
