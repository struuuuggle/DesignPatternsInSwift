//
//  Builder.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/11.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol Builder {
    func makeTitle(_ title: String)
    
    func makeString(_ str: String)
    
    func makeItems(_ items: [String])
    
    func close()
}
