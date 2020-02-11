//
//  TextBuilder.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/11.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class TextBuilder: Builder {
    /// resultTextに文書を構築する
    private var resultText: String = ""
    
    func makeTitle(_ title: String) {
        resultText.append("========================\n")
        resultText.append("『\(title)』\n")
        resultText.append("\n")
    }
    
    func makeString(_ str: String) {
        resultText.append("■\(str)\n")
        resultText.append("\n")
    }
    
    func makeItems(_ items: [String]) {
        items.forEach { item in
            resultText.append("　・\(item)\n")            
        }
        resultText.append("\n")
    }
    
    func close() {
        resultText.append("========================")
    }
    
    /// 完成した文書
    func getResult() -> String {
        self.resultText
    }
}
