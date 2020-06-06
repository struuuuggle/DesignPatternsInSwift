//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

import Foundation

/// BookShelfクラスのスキャンを行う
class BookShelfIterator: Iterator {
    private var bookShelf: BookShelf
    private var index: Int

    init(_ bookShelf: BookShelf) {
        self.bookShelf = bookShelf
        self.index = 0
    }

    func hasNext() -> Bool {
        index < bookShelf.getLength()
    }

    func next() -> Any { // 型情報がなくなるので業務で使用することはおすすめしない
        defer { index += 1 }

        let book = bookShelf.getBookAt(index: index)
        return book!
    }
}
