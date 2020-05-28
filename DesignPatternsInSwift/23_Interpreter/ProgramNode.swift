//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// <program>を表すクラス
  ///
  /// `<program> ::= program <command list>`
  struct ProgramNode: Node {
    private var commandListNode: Node?

    mutating func parse(context: Context) throws {
      // BNFの先頭の"program"という文字列を読み飛ばす
      try context.skipToken(token: "program")
      commandListNode = CommandListNode()
      try commandListNode!.parse(context: context)
    }
  }
}

extension Interpreter.ProgramNode: CustomStringConvertible {
  /// ProgramNodeの文字列表現
  ///
  /// BNF形式で出力される
  var description: String {
    "[program \(commandListNode!)]"
  }
}
