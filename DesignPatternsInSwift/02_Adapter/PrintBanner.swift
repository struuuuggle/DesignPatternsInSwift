//
//  PrintBanner.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/23.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

extension Adapter {
    struct PrintBanner: Print {
        private var banner: Banner
        
        init(message: String) {
            self.banner = Banner(message: message)
        }
        
        func printWeak() {
            banner.printWithParenthesis()
        }
        
        func printStrong() {
            banner.printWithAsterisk()
        }
    }    
}
