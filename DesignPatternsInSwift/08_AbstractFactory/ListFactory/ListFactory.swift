//
//  ListFactory.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

final class ListFactory: Factory {
    
    override func createLink(caption: String, url: String) -> Link {
        ListLink(caption: caption, url: url)
    }
    
    override func createTray(caption: String) -> Tray {
        ListTray(caption: caption)
    }
    
    override func createPage(title: String, author: String) -> Page {
        ListPage(title: title, author: author)
    }
    
    
}
