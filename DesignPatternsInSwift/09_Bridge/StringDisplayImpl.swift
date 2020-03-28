//
//  StringDisplayImpl.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/16.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

extension Bridge {    
    class StringDisplayImpl: DisplayImpl {
        var str: String
        var width: Int
        
        init(str: String) {
            self.str = str
            self.width = str.lengthOfBytes(using: .utf8)
        }
        
        func rawOpen() {
            self.printLine()
        }
        
        func rawPrint() {
            print("|\(self.str)|")
        }
        
        func rawClose() {
            self.printLine()
        }
        
        private func printLine() {
            print("+", terminator: "")
            (0..<self.width).forEach { _ in
                print("-", terminator: "")
            }
            print("+")
        }
    }
}
