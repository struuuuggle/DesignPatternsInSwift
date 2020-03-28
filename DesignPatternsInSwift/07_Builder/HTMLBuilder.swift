//
//  HTMLBuilder.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/11.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension BuilderMain {
    class HTMLBuilder: Builder {
        private var filename: String = ""
        private var resultHTML: String = ""
        
        func makeTitle(_ title: String) {
            filename = "\(title).html"
            resultHTML.append(
                """
                <html>
                <head>
                <title>\(title)</title>
                </head>
                <body>
                
                """
            )
            resultHTML.append("<h1>\(title)</h1>\n")
        }
        
        func makeString(_ str: String) {
            resultHTML.append("<h3>\(str)</h3>\n")
        }
        
        func makeItems(_ items: [String]) {
            resultHTML.append("<ul>\n")
            items.forEach { item in
                resultHTML.append("<li>\(item)</li>\n")
            }
            resultHTML.append("</ul>\n")
        }
        
        func close() {
            resultHTML.append("</body></html>")
            output()
        }
        
        /// ファイルにresultHTMLの値を書き込む
        /// - ファイルは以下の場所に生成される
        /// - DerivedData/DesignPatternsInSwift*/Build/Products/Debug/
        func output() {
            FileManager.default.createFile(atPath: filename, contents: nil, attributes: nil)
            let file = FileHandle(forWritingAtPath: filename)!
            file.seekToEndOfFile()
            file.write(resultHTML.data(using: .utf8)!)
            try! file.close()
        }
        
        /// 完成した文書のファイル名を返す
        func getResult() -> String {
            filename
        }
    }
}
