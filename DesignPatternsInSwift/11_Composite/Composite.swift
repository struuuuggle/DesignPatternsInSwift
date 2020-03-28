//
//  Composite.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2020/02/24.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

enum Composite {
    static func main() {
        print("Making root entries...")
        let rootDirectory = Directory(name: "root")
        let binDirectory = Directory(name: "bin")
        let tmpDirectory = Directory(name: "tmp")
        let usrDirectory = Directory(name: "usr")
        _ = rootDirectory.add(entry: binDirectory)
        _ = rootDirectory.add(entry: tmpDirectory)
        _ = rootDirectory.add(entry: usrDirectory)
        _ = binDirectory.add(entry: File(name: "vi", size: 10000))
        _ = binDirectory.add(entry: File(name: "latex", size: 20000))
        rootDirectory.printList()
        
        newLine()
        print("Making user entries...")
        let yuki = Directory(name: "yuki")
        let hanako = Directory(name: "hanako")
        let tomura = Directory(name: "tomura")
        _ = usrDirectory.add(entry: yuki)
        _ = usrDirectory.add(entry: hanako)
        _ = usrDirectory.add(entry: tomura)
        _ = yuki.add(entry: File(name: "diary.html", size: 100))
        _ = yuki.add(entry: File(name: "Composite.swift", size: 200))
        _ = hanako.add(entry: File(name: "memo.tex", size: 300))
        _ = tomura.add(entry: File(name: "game.doc", size: 400))
        _ = tomura.add(entry: File(name: "junk.mail", size: 500))
        rootDirectory.printList()
        
    }
}

public func newLine() {
    print()
}
