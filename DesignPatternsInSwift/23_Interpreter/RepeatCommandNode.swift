//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// `<repeat command>`を表す
  ///
  /// `<repeat command> ::= repeat <number> <command list>`
  struct RepeatCommandNode: Node {
    private var number: Int?
    private var commandListNode: Node?

    mutating func parse(context: Context) throws {
      try context.skipToken(token: "repeat")
      try number = context.currentNumber()
      context.nextToken()
      commandListNode = CommandListNode()
      try commandListNode!.parse(context: context)
    }
  }
}

extension Interpreter.RepeatCommandNode: CustomStringConvertible {
  var description: String {
    "[repeat \(number!) \(commandListNode!)]"
  }
}
