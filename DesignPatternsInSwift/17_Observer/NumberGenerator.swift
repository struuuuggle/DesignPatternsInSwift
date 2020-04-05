//
//  NumberGenerator.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/04/05.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

protocol NumberGenerator {
    /// observerを保持する
    var observers: [BaseObserver] { get set }
    /// 数を取得する
    func getNumber() -> Int
    /// 数を生成する
    func execute()
}

extension NumberGenerator {
    /// Observerを追加
    mutating func addObserver(_ observer: BaseObserver) {
        observers.append(observer)
    }
    /// Observerを削除
    ///
    /// 使用していないためコメントアウトしておく
    /*
    mutating func deleteObserver(_ observer: BaseObserver) {
    }
     */

    /// Observerへ通知
    func notifyObservers() {
        observers.forEach { $0.update(generator: self) }
    }
}
