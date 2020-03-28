//
//  Display.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2019/12/16.
//  Copyright © 2019 Mikiya Abe. All rights reserved.
//

import Foundation

//protocol Display {
//    var impl: DisplayImpl { get }
//
//    func open()
//
//    func print()
//
//    func close()
//
//    func display()
//}
//
//extension Display {
//    func display() {
//        open()
//        print()
//        close()
//    }
//}

extension Bridge {    
    class Display {
        var impl: DisplayImpl
        
        init(impl: DisplayImpl) {
            self.impl = impl
        }
        
        func open() {
            impl.rawOpen()
        }
        
        func print() {
            impl.rawPrint()
        }
        
        func close() {
            impl.rawClose()
        }
        
        func display() {
            open()
            print()
            close()
        }
    }
}
