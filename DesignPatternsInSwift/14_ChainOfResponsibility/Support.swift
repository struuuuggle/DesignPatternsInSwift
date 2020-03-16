//
//  Support.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/15.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

class Support {
    /// このトラブル解決者の名前
    var name: String
    /// たらい回し先
    var next: Support?
    
    init(name: String) {
        self.name = name
    }
    
    /// 解決用メソッド
    /// - Parameter trouble: 解決するトラブル
    func resolve(_ trouble: Trouble) -> Bool {
        fatalError()
    }
}

extension Support {
    typealias Trouble = ChainOfResponsibility.Trouble
    
    /// たらい回し先を設定
    func setNext(next: Support) -> Support {
        self.next = next
        return next
    }
    
    /// トラブル解決の手順
    func support(_ trouble: Trouble) {
        guard !resolve(trouble) else {
            done(trouble) // 解決
            return
        }
        
        // 次の人がいない場合は、
        // 自分が連鎖の最後であり誰も処理できなかったことを表示
        guard let next = next else {
            fail(trouble)
            return
        }
        
        // たらい回す
        next.support(trouble)
    }
    
    // トラブルが解決したときに呼ばれる
    func done(_ trouble: Trouble) {
        print("\(trouble) is resolved by \(self).")
    }
    
    // トラブルが最後まで解決したかった場合に呼ばれる
    func fail(_ trouble: Trouble) {
        print("\(trouble) cannot be resolved.")
    }
}

extension Support: CustomStringConvertible {
    // for CustomStringConvertible
    var description: String {
        "[\(name)]"
    }
}

/// プロトコルにしたかったが、
/// alice.setNext(next: bob).setNext(next: charlie)を呼ぶと、次のエラーで怒られるので、一旦protocolではなくclassで実装した
/// "cannot use mutating member on immutable value: function call returns immutable value"
/*
protocol Support: CustomStringConvertible {
    /// このトラブル解決者の名前
    var name: String { get set }
    /// たらい回し先
    var next: Support? { get set }
    /// 解決用メソッド
    /// - Parameter trouble: 解決するトラブル
    func resolve(_ trouble: Trouble) -> Bool
}

extension Support {
    typealias Trouble = ChainOfResponsibility.Trouble
    
    /// たらい回し先を設定
    mutating func setNext(next: Support) -> Support {
        self.next = next
        return next
    }
    
    /// トラブル解決の手順
    func support(_ trouble: Trouble) {
        guard !resolve(trouble) else {
            done(trouble) // 解決
            return
        }
        
        // 次の人がいない場合は、
        // 自分が連鎖の最後であり誰も処理できなかったことを表示
        guard let next = next else {
            fail(trouble)
            return
        }
        
        // たらい回す
        next.support(trouble)
    }
    
    // トラブルが解決したときに呼ばれる
    func done(_ trouble: Trouble) {
        print("\(trouble) is resolved by \(self).")
    }
    
    // トラブルが最後まで解決したかった場合に呼ばれる
    func fail(_ trouble: Trouble) {
        print("\(trouble) cannot be resolved.")
    }
}

extension Support {
    // for CustomStringConvertible
    var description: String {
        "[\(name)]"
    }
}
*/
