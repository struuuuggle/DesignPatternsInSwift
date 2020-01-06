//
//  TemplateMethodMain.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/06.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct TemplateMethodMain {
    static func main() {
        let d1 = CharDisplay(char: "H")
        let d2 = StringDisplay(str: "Hello, world.")
        let d3 = StringDisplay(str: "こんにちは。")
        
        Swift.print("d1.display()の結果")
        d1.display()
        Swift.print("d2.display()の結果")
        d2.display()
        Swift.print("d3.display()の結果")
        d3.display()
    }
}
