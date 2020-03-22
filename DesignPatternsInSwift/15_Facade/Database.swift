//
//  Database.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/03/22.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Facade {
    enum Database {
        static func getProperties(dbName: String) -> Dictionary<String, String> {
            PlistParser.parse(fileName: dbName) ?? Dictionary<String, String>()
        }
    }
}

extension Facade {
    class PlistParser {
        static func parse(fileName: String) -> Dictionary<String, String>? {
            
//            guard let plistURL = Bundle.main.path(forResource: fileName, ofType:"plist") else {
//                fatalError("Error: \(fileName) is not found.")
//            }
            
            return NSDictionary(contentsOfFile: "~/Documents/DesignPatternsInSwift/DesignPatternsInSwift/15_Facade/MailData.plist") as? Dictionary<String, String>
        }
    }
}
