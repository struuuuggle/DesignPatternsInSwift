//
// Created by Mikiya Abe on 2020/05/10.
// Copyright (c) 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// PrinterProxyクラスとPrinterクラスを同一視するためのもの
protocol Printable {
    /// 名前の設定
    func setPrinterName(_ name: String)
    /// 名前の取得
    func getPrinterName() -> String
    /// 文字列表示(プリントアウト)
    func print(_ string: String)
}
