//
//  ListVisitor.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Visitor {
    
    /// データ構造を渡り歩きながら一覧を表示するためのクラス
    class ListVisitor: VisitorProtocol {
        /// 現在注目しているディレクトリ
        private var currentDirectory = ""
        
        /// ファイルを訪問したときに呼ばれる
        func visit(file: Visitor.File) {
            print("\(currentDirectory)/\(file)")
        }
        
        /// ディレクトリを訪問したときに呼ばれる
        func visit(directory: Visitor.Directory) {
            print("\(currentDirectory)/\(directory)")
            
            let savedDirectory = currentDirectory
            currentDirectory = "\(currentDirectory)/\(directory.getName())"
            directory.forEach({ $0.accept(self) })
            currentDirectory = savedDirectory
        }
    }
}
