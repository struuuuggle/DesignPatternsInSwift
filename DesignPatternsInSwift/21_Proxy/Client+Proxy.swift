//
// Created by Mikiya Abe on 2020/05/10.
// Copyright (c) 2020 Mikiya Abe. All rights reserved.
//

import Foundation

extension Client {
    static func proxy() {
        let p = Proxy.PrinterProxy(name: "Alice")
        print("名前は現在\(p.getPrinterName())です。")
        p.setPrinterName("Bob")
        print("名前は現在\(p.getPrinterName())です。")
        p.print("Hello, world.")
    }
}
