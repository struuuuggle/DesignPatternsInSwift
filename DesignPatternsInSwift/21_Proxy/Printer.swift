//
// Created by Mikiya Abe on 2020/05/10.
// Copyright (c) 2020 Mikiya Abe. All rights reserved.
//

import Foundation

enum Proxy {}

extension Proxy {

    /// 「本人」を表すクラス
    class Printer: Printable {
        private var name: String?

        init() {
            heavyJob("Printerのインスタンス(\(String(describing: name)))を生成中")
        }

        init(name: String) {
            self.name = name
            heavyJob("Printerのインスタンス(\(name))を生成中")
        }

        /// 名前の設定
        func setPrinterName(_ name: String) {
            self.name = name
        }

        /// 名前の取得
        func getPrinterName() -> String {
            name ?? ""
        }

        /// 名前付きで表示
        func print(_ string: String) {
            let length = string.lengthOfBytes(using: .utf8)

            // 以下サンプルコードのprintにデコレーションを付け加えている
            Swift.print("===== \(name!) =====")
            Swift.print("+", terminator: "")
            (0..<length).forEach { _ in Swift.print("-", terminator: "") }
            Swift.print("+", terminator: "")
            lineBreak()
            Swift.print("|\(string)|")
            Swift.print("+", terminator: "")
            (0..<length).forEach { _ in Swift.print("-", terminator: "") }
            Swift.print("+", terminator: "")
            lineBreak()
        }

        /// 重い作業
        private func heavyJob(_ msg: String) {
            Swift.print(msg, terminator: "")
            (0..<5).forEach{ _ in
                sleep(1)
                Swift.print(".", terminator: "")
            }
            Swift.print("完了。")
        }
    }
}
