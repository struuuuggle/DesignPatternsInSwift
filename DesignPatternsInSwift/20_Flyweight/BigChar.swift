//
//  BigChar.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/25.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Flyweight {

    /// 大きな文字を表すクラス
    final class BigChar {
        /// 文字の名前
        private let charName: String
        /// 大きな文字を表現する('#', '.', '\n'の列)
        private let fontData: String

        init(charName: String) {
            self.charName = charName

            self.fontData = FileManager.readFile(filename: "big\(charName)", type: "txt")!
        }

        /// 大きな文字を表示する
        func print() {
            Swift.print(fontData, terminator: "")
        }
    }
}

private extension FileManager {
    static func readFile(filename: String, type: String) -> String? {

        let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
        let bundleURL = URL(fileURLWithPath: "Resources.bundle", relativeTo: currentDirectoryURL)

        guard
            let resourcesBundle = Bundle(url: bundleURL),
            let path = resourcesBundle.path(forResource: filename, ofType: type) else { return nil }

        do {
            return try String(contentsOfFile: path, encoding: .utf8)
        } catch _ {
            fatalError("File not found")
        }
    }
}
