//
//  CountDisplay.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/16.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

extension Bridge {
    class CountDisplay: Display {
        override init(impl: DisplayImpl) {
            super.init(impl: impl)
        }
        
        func multiDisplay(times: Int) {
            super.open()
            (0..<times).forEach { _ in
                super.print()
            }
            super.close()
        }
    }    
}
