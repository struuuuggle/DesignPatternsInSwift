//
//  PageMaker.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/22.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Facade {
    enum PageMaker {
        static func makeWelcomePage(address: String, fileName: String) {
            let mailProperties = Database.getProperties(dbName: "MailData")
            let userName = mailProperties[address] ?? "NO_NAME"
            
            FileManager.default.createFile(atPath: fileName, contents: nil, attributes: nil)
            let writer = HTMLWriter(FileHandle(forWritingAtPath: fileName)!)
            writer.title("Welcome to \(userName)'s page!")
            writer.paragraph("\(userName)のページへようこそ。")
            writer.paragraph("メールまっていますね。")
            writer.mailTo(address: address, userName: userName)
            writer.close()
            
            print("\(fileName) is created for \(address) (username)")
        }
    }
}
