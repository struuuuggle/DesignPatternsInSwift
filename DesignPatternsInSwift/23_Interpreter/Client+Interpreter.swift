//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

enum Interpreter {}

extension Client {
  static func interpreter() {
    let input: [String] = [
      "program end",
      "program go end",
      "program go right go right go right end",
      "program repeat 4 go right end end",
      "program repeat 4 go right go left end right end end",
    ]
    do {
      try input.forEach { text in
        print("text: \"\(text)\"")
        var node = Interpreter.ProgramNode()
        try node.parse(context: Interpreter.Context(text: text))
        print("node = \"\(node)\"")
      }
    } catch let e {
      print(e)
    }
  }

  /**
   出力結果:
   
   text: "program end"
   node = "[program []]"
   text: "program go end"
   node = "[program [go]]"
   text: "program go right go right go right end"
   node = "[program [go, right, go, right, go, right]]"
   text: "program repeat 4 go right end end"
   node = "[program [[repeat 4 [go, right]]]]"
   text: "program repeat 4 go right go left end right end end"
   node = "[program [[repeat 4 [go, right, go, left]], right]]"
   */
}
