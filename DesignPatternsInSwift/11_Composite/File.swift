//
//  Entry.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2020/02/24.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

final class File: Entry {
    
    private var name: String
    private var size: Int

    init(name: String, size: Int) {
        self.name = name
        self.size = size
    }
    
    func add(entry: Entry) -> Entry {
        fatalError()
    }
    
    func getName() -> String {
        name
    }

    func getSize() -> Int {
        size
    }

    func printList(prefix: String) {
        print("\(prefix)/\(toString())")
    }
}
