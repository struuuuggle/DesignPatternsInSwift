//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

/// 要素の数え上げを行う
///
/// ループ変数のような役割を果たす
protocol Iterator {
    /// 「次の要素」が存在するかどうかを調べる
    func hasNext() -> Bool
    /// 集合体の要素を1個返す
    ///
    /// この次、nextメソッドを呼び出したときに、ちゃんと次の要素を返すように、内部状態を次に進めておく
    func next() -> Any
}
