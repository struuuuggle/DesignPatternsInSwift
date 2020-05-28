//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// `<command list>`を表すクラス
  ///
  /// `<command list> ::= <command>* end`
  struct CommandListNode: Node {
    private var list: [Node] = []

    mutating func parse(context: Context) throws {
      while true {
        // 残りのトークンがない(= BNFを最後まで呼んだ)とき
        guard context.currentToken() != nil else {
          throw InterpretationError.parseError("Missing \'end\'")
        }

        // <command list>の終わりまできたとき
        if context.currentToken() == "end" {
          try context.skipToken(token: "end")
          break
        } else {
          var commandNode = CommandNode()
          try commandNode.parse(context: context)
          list.append(commandNode)
        }
      }
    }
  }
}

extension Interpreter.CommandListNode: CustomStringConvertible {
  var description: String {
    list.description
  }
}
