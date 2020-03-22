//
//  HTMLWriter.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/22.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Facade {
    /// 簡単なHTMLファイルを出力する
    class HTMLWriter {
        private let writer: FileHandle
        
        init(_ writer: FileHandle) {
            self.writer = writer
            self.writer.seekToEndOfFile()
        }
        
        /// タイトルを出力
        func title(_ title: String) {
            writer.write("<html>".data(using: .utf8)!)
            writer.write("<head>".data(using: .utf8)!)
            writer.write("<title>\(title)</title>".data(using: .utf8)!)
            writer.write("</head>\n".data(using: .utf8)!)
            writer.write("<body>\n".data(using: .utf8)!)
            writer.write("<h1>\(title)</h1>".data(using: .utf8)!)
        }
        
        /// 段落の出力
        func paragraph(_ msg: String) {
            writer.write("<p>\(msg)</p>\n".data(using: .utf8)!)
        }
        
        /// リンクの出力
        func link(href: String, caption: String) {
            paragraph("<a href=\"\(href)\">\(caption)</a>")
        }
        
        /// メールアドレスの出力
        func mailTo(address: String, userName: String) {
            link(href: "mailto:\(address)", caption: userName)
        }
        
        /// ファイルを閉じる
        func close() {
            writer.write("</body>".data(using: .utf8)!)
            writer.write("</html>\n".data(using: .utf8)!)
            try! writer.close()
        }
    }
}
