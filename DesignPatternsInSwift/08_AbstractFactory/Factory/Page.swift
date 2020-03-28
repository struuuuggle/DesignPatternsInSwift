//
//  Page.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension AbstractFactory {
    class Page {
        var title: String
        var author: String
        var content = [Item]()
        
        init(title: String, author: String) {
            self.title = title
            self.author = author
        }
        
        func add(item: Item) {
            self.content.append(item)
        }
        
        /// "title".htmlに自分自身のHTMLの内容を書き出す
        /// - 書き込むHTMLの内容はmakeHTML()の出力結果
        /// - ファイルはDerivedData/<APP_NAME>/に生成される
        func output() {
            let filename = self.title + ".html"
            
            guard !FileManager.default.fileExists(atPath: filename) else {
                print("\(filename) already exists.")
                return
            }
            
            do {
                FileManager.default.createFile(atPath: filename, contents: nil, attributes: nil)
                let file = FileHandle(forWritingAtPath: filename)!
                let outputData = self.makeHTML().data(using: .utf8)!
                file.seekToEndOfFile()
                file.write(outputData)
                try file.close()
                print("Finished writing \(filename)")
            } catch {
                print(error.localizedDescription)
            }
        }
        
        func makeHTML() -> String {
            fatalError()
        }
    }    
}

