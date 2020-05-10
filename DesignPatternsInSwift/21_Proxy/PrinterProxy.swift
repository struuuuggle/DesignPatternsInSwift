//
// Created by Mikiya Abe on 2020/05/10.
// Copyright (c) 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Proxy {
    /// 「代理人」の役割を果たす
    class PrinterProxy: Printable {
        /// 名前
        private var name: String?
        /// 本人
        private var real: Printer?

        private let serialQueue = DispatchQueue(label: "SerialQueue")

        init() {}

        init(name: String) {
            self.name = name
        }

        /// 名前の設定
        ///
        /// Javaだと `synchronized void setPrinterName(String name)`
        func setPrinterName(_ name: String) {
            serialQueue.sync { [weak self] in
                self?.real?.setPrinterName(name) // 「本人」にも設定する
                self?.name = name
            }
        }

        /// 名前の取得
        func getPrinterName() -> String {
            name ?? ""
        }

        /// 表示
        func print(_ string: String) {
            realize()
            real?.print(string)
        }

        /// 「本人」を作成
        ///
        /// Javaだと `synchronized void realize()`
        private func realize() {
            serialQueue.sync { [weak self] in
                if self?.real == nil  {
                    self?.real = Printer(name: (self?.name)!)
                }
            }
        }
    }
}
