//
//  PrototypeProduct.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/03.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol PrototypeProduct {
    func use(s: String)
    
    func createClone() -> PrototypeProduct
}
