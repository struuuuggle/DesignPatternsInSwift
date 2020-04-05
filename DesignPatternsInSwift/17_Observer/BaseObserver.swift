//
//  BaseObserver.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

/// 「観察者」を表すインターフェース
protocol BaseObserver {
    /// NumberGeneratorがObserverに表示を更新するよう依頼する
    ///
    /// NumberGeneratorは「私の内容が更新されました。表示の方も更新してください」とObserverに伝える
    func update(generator: NumberGenerator)
}
