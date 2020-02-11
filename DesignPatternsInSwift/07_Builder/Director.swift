//
//  Director.swift
//  DesignPatternsInSwift
//
//  Created by Mikiya Abe on 2020/02/11.
//  Copyright © 2020 Mikiya Abe. All rights reserved.
//

import Foundation

struct Director {
    let builder: Builder
    
    func construct() {
        builder.makeTitle("92ndAcademyAwards")
        builder.makeString("作品賞")
        builder.makeItems([
            "フォードvsフェラーリ",
            "アイリッシュマン",
            "ジョジョ・ラビット",
            "ジョーカー",
            "ストーリー・オブ・マイライフ　わたしの若草物語",
            "マリッジ・ストーリー",
            "1917 命をかけた伝令",
            "ワンス・アポン・ア・タイム・イン・ハリウッド",
            "パラサイト　半地下の家族"
        ])
        builder.makeString("監督賞")
        builder.makeItems([
            "マーティン・スコセッシ",
            "トッド・フィリップス",
            "サム・メンデス",
            "クエンティン・タランティーノ",
            "ポン・ジュノ"
        ])
        builder.close()
    }
}
