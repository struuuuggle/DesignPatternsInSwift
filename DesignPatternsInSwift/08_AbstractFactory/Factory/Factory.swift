//
//  Factory.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/01/27.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class Factory {
    
    /// 引数で受け取った文字列のクラス名からインスタンスを生成する
    /// - 生成するクラスはNSObjectを継承している必要がある
    /// - Parameters:
    ///   - category: 生成するクラス名
    static func getFactory(from category: FactoryCategory) -> Factory {
        switch category {
        case .ListFactory: return ListFactory()
        }
    }

    func createLink(caption: String, url: String) -> Link {
        fatalError()
    }
    func createTray(caption: String) -> Tray {
        fatalError()
    }
    func createPage(title: String, author: String) -> Page {
        fatalError()
    }
}

enum FactoryCategory: String {
    case ListFactory
}
