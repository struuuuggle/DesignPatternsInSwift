//
//  Created by Mikiya Abe(@struuuuggle) on 2020/05/29.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

extension Interpreter {
  /// 構文解析のために必要なメソッドを提供するクラス
  class Context {
    private var tokenizer: StringTokenizer
    private var _currentToken: String?

    init(text: String) {
      tokenizer = StringTokenizer(text)
      nextToken()
    }

    /// 次のトークンを得る
    @discardableResult
    func nextToken() -> String? {
      if tokenizer.hasMoreToken() {
        _currentToken = tokenizer.nextToken()
      } else {
        _currentToken = nil
      }
      return _currentToken
    }

    /// 現在のトークンを得る(次のトークンへは進まない)
    func currentToken() -> String? {
      _currentToken
    }

    /// 現在のトークンをチェックしてから、次のトークンを得る(次のトークンに進む)
    func skipToken(token: String) throws {
      guard token == _currentToken else {
        throw InterpretationError.parseError("Warning \(token) is expected, but \(_currentToken ?? "nil") is found.")
      }
      nextToken()
    }

    /// 現在のトークンを数値として得る(次のトークンへは進まない)
    func currentNumber() throws -> Int {
      guard let numberStr = _currentToken, let number = Int(numberStr) else {
        throw InterpretationError.parseError("Warning: NumberFormatError")
      }
      return number
    }
  }
}

/// `java.util.StringTokenizer`
class StringTokenizer {
  private var stringList: [String]
  private var topIndex: Int

  init(_ text: String) {
    stringList = text.components(separatedBy: " ")
    topIndex = -1
  }

  /// 次のトークンを得る(次のトークンに進む)
  func nextToken() -> String {
    topIndex += 1
    return stringList[topIndex]
  }

  /// 次のトークンがあるかどうかを調べる
  func hasMoreToken() -> Bool {
    topIndex < stringList.count - 1
  }
}
