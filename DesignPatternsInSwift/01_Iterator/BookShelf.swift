//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

/// 本棚を表現しているクラス
class BookShelf: Aggregate {
    private var books: [Book?] = []
    private var last: Int = 0

    init(maximize: Int) {
        books = Array(repeating: nil, count: 4)
    }

    func getBookAt(index: Int) -> Book? {
        books[index]
    }

    func appendBook(_ book: Book) {
        defer { last += 1 }
        books[last] = book
    }

    func getLength() -> Int {
        last
    }

    func iterator() -> Iterator {
        BookShelfIterator(self)
    }
}
