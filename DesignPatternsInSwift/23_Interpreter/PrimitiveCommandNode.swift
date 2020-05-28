//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// `<primitive command>`を表すクラス
  ///
  /// `<primitive command> ::= go | right | left`
  struct PrimitiveCommandNode: Node {
    private var name: String?

    mutating func parse(context: Interpreter.Context) throws {
      name = context.currentToken()
      try context.skipToken(token: name!)
      if name != "go" && name != "right" && name != "left" {
        throw InterpretationError.parseError("\(name!) is undefined")
      }
    }
  }
}

extension Interpreter.PrimitiveCommandNode: CustomStringConvertible {
  var description: String {
    name!
  }
}
