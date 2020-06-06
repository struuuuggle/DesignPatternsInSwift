//
//  Created by Mikiya Abe(@struuuuggle) on 2020/06/06.
//  Copyright © 2020, Mikiya Abe. All rights reserved.
//

extension Client {
    static func iterator() {
        let bookShelf = BookShelf(maximize: 4)
        bookShelf.appendBook(Book(name: "Around the World in 80 Days"))
        bookShelf.appendBook(Book(name: "Bible"))
        bookShelf.appendBook(Book(name: "Cinderella"))
        bookShelf.appendBook(Book(name: "Daddy-Long-Legs"))
        let it = bookShelf.iterator()
        while it.hasNext() {
            let book = it.next() as! Book
            print(book.name)
        }
    }
}
