//
//  Entry.swift
//  DPwithSwift
//
//  Created by Mikiya Abe on 2020/02/24.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

protocol Entry {
    func getName() -> String

    func getSize() -> Int

    func add(entry: Entry) -> Entry

    func printList(prefix: String)
}

extension Entry {
    
    func printList() {
        printList(prefix: "")
    }

    func toString() -> String {
        "\(getName()) (\(getSize()))"
    }
}
