//
//  CompositeMain.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2020/02/24.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

struct CompositeMain {
    static func main() {
        print("Making root entries...")
        let rootDirectory = Directory(name: "root")
        let binDirectory = Directory(name: "bin")
        let tmpDirectory = Directory(name: "tmp")
        let usrDirectory = Directory(name: "usr")
        rootDirectory.add(entry: binDirectory)
        rootDirectory.add(entry: tmpDirectory)
        rootDirectory.add(entry: usrDirectory)
        binDirectory.add(entry: File(name: "vi", size: 10000))
        binDirectory.add(entry: File(name: "latex", size: 20000))
        rootDirectory.printList()
        
        newLine()
        print("Making user entries...")
        let yuki = Directory(name: "yuki")
        let hanako = Directory(name: "hanako")
        let tomura = Directory(name: "tomura")
        usrDirectory.add(entry: yuki)
        usrDirectory.add(entry: hanako)
        usrDirectory.add(entry: tomura)
        yuki.add(entry: File(name: "diary.html", size: 100))
        yuki.add(entry: File(name: "Composite.swift", size: 200))
        hanako.add(entry: File(name: "memo.tex", size: 300))
        tomura.add(entry: File(name: "game.doc", size: 400))
        tomura.add(entry: File(name: "junk.mail", size: 500))
        rootDirectory.printList()
        
    }
}

public func newLine() {
    print()
}
