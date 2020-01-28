//
//  ListTray.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

final class ListTray: Tray {
    override init(caption: String) {
        super.init(caption: caption)
    }
    
    override func makeHTML() -> String {
        var buffer = ""
        buffer.append("<li>\n")
        buffer.append("\(caption)\n")
        buffer.append("<ul>\n")
        tray.forEach { item in
            buffer.append(item.makeHTML())
        }
        buffer.append("</ul>\n")
        buffer.append("</li>\n")
        
        return buffer
    }
}
