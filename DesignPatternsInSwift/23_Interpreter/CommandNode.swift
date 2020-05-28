//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// `<command>`を表すクラス
  ///
  /// `<command> ::= <repeat command> | <primitive command>`
  struct CommandNode: Node {
    private var node: Node!
    private var type: NodeType! // helper

    enum NodeType {
      case repeatCommandNode
      case primitiveCommandNode
    }

    mutating func parse(context: Interpreter.Context) throws {
      if context.currentToken() == "repeat" {
        node = RepeatCommandNode()
        type = .repeatCommandNode
        try node!.parse(context: context)
      } else {
        node = PrimitiveCommandNode()
        type = .primitiveCommandNode
        try node!.parse(context: context)
      }
    }
  }
}

extension Interpreter.CommandNode: CustomStringConvertible {
  var description: String {
    switch type {
    case .none:
      return ""
    case .repeatCommandNode:
      let _node = node as! Interpreter.RepeatCommandNode
      return _node.description
    case .primitiveCommandNode:
      let _node = node as! Interpreter.PrimitiveCommandNode
      return _node.description
    }
  }
}
