//
//  Visitor.swift
//  DesignPatternsInSwift
//
//  Created by 阿部 未樹也 on 2020/03/08.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Visitor {
    typealias Entry = VisitorEntry

    static func main() {
        typealias Directory = Visitor.Directory
        do {
            print("Making root entries...")
            let root = Directory(name: "root")
            let bin = Directory(name: "bin")
            let tmp = Directory(name: "tmp")
            let usr = Directory(name: "usr")
            
            _ = try root.add(bin)
            _ = try root.add(tmp)
            _ = try root.add(usr)
            
            _ = try bin.add(File(name: "vi", size: 10000))
            _ = try bin.add(File(name: "latex", size: 20000))
            
            root.accept(ListVisitor())
            
            lineBreak()
            print("Making user entries...")
            let yuki = Directory(name: "yuki")
            let hanako = Directory(name: "hanako")
            let tomura = Directory(name: "tomura")
            
            _ = try usr.add(yuki)
            _ = try usr.add(hanako)
            _ = try usr.add(tomura)
                        
            _ = try yuki.add(File(name: "diary.html", size: 100))
            _ = try yuki.add(File(name: "Composite.swift", size: 200))
            
            _ = try hanako.add(File(name: "memo.tex", size: 300))
            
            _ = try tomura.add(File(name: "game.doc", size: 400))
            _ = try tomura.add(File(name: "junk.mail", size: 500))
            
            root.accept(ListVisitor())
            
        } catch let error {
            debugPrint(error)
        }
    }
}

public func lineBreak() {
    print("")
}
