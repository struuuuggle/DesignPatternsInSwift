//
//  Directory.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2020/02/24.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

final class Directory: Entry {
    
    private var name: String
    private var directory = [Entry]()

    init(name: String) {
        self.name = name
    }

    func getName() -> String {
        name
    }

    func getSize() -> Int {
        directory
            .compactMap { entry in entry.getSize() }
            .reduce(0) { $0 + $1 }
    }

    func add(entry: Entry) -> Entry {
        directory.append(entry)
        return self
    }

    func printList(prefix: String) {
        print("\(prefix)/\(toString())")
        directory.forEach { entry in entry.printList(prefix: "\(prefix)/\(name)") } // is name ok?
    }
}
