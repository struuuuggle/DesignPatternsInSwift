//
//  BuilderMain.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/11.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct BuilderMain {
    
    static func main(builderType: BuilderType) {
        
        switch builderType {
            
        case .TextBuilder:
            let textBuilder = TextBuilder()
            let director = Director(builder: textBuilder)
            director.construct()
            print(textBuilder.getResult())
            
        case .HtmlBuilder:
            let htmlBuilder = HTMLBuilder()
            let director = Director(builder: htmlBuilder)
            director.construct()
            let filename = htmlBuilder.getResult()
            print("\(filename)が作成されました。")
        }
    }
}

enum BuilderType {
    case TextBuilder
    case HtmlBuilder
}
