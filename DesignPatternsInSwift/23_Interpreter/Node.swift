//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

/// 構文木の各部分(ノード)を構成する最上位のクラス
protocol Node {
  /// 構文解析を行う
  mutating func parse(context: Interpreter.Context) throws
}

/// 構文解析中のエラーを表す
enum InterpretationError: Error {
  case parseError(String)
}
