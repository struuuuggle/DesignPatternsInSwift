//
//  Banner.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/23.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

extension Adapter {
    struct Banner {
        let message: String
        
        func printWithParenthesis() {
            print("(\(self.message))")
        }
        
        func printWithAsterisk() {
            print("*\(self.message)*")
        }
    }    
}
