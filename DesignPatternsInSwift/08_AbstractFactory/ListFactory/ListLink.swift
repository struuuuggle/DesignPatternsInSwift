//
//  ListLink.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension AbstractFactory {
    final class ListLink: Link {
        override init(caption: String, url: String) {
            super.init(caption: caption, url: url)
        }
        
        override func makeHTML() -> String {
            "<li><a href=\"" + url + "\">" + caption + "</a></li>\n"
        }
    }    
}

