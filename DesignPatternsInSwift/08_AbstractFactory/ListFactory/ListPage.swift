//
//  ListPage.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/28.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

final class ListPage: Page {

    override init(title: String, author: String) {
        super.init(title: title, author: author)
    }
    
    override func makeHTML() -> String {
        var buffer = ""
        buffer.append("<html><head><title>\(title)</title></head>\n")
        buffer.append("<body>\n")
        buffer.append("<h1>\(title)</h1>\n")
        buffer.append("<ul>\n")
        content.forEach { item in
            buffer.append(item.makeHTML())
        }
        buffer.append("</ul>\n")
        buffer.append("<hr><address>\(author)</address>")
        buffer.append("</body></html>\n")
        
        return buffer
    }
    
    
}
