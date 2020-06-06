//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

/// 数え上げを行うものの「集合体」を表す
protocol Aggregate {
    /// 集合体に対するIteratorを1個作成する
    func iterator() -> Iterator
}
