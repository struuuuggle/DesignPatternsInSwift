#  Factory Method
インスタンス作成をサブクラスに任せる

## どんなものか
インスタンス作成の枠組み（フレームワーク）と、実際のインスタンス生成のクラスを分ける。
特定クラスのインスタンス生成をFactoryクラスに一任することができる。

## いつ使うか
- 検証/リリースでモックと本番データを切り替えるとき
など

## どんなメリットがあるか
- テストが楽になる

今まで経験したプロジェクトでは、テスト用のデータを作ってViewの中に直接置いてしまうことが多かった。
Viewに置いたデータはいずれは使わないことになり、APIから取得したデータをいざ使うとなると、テストデータをまるごと消すことが多かった。この切替が結構めんどくさい。
ここにFactory Methodを適用するとすれば、デバッグのために必要なデータがある場合、そのデータクラスのインスタンスを生成するFactoryクラスを作ることになる。

例えば、APIからBookデータを取得する処理を書くとする。
Networkingの処理がまだ実装されていないとすると、Mock Bookがほしい。
そういうときは↓のようにすれば、Bookデータを使うときにそのデータがMockか否かを意識する必要がなくなる。

```swift
protocol BookProtocol {
  let id: String
  let title: String
  let authors: [String]
  func info()
}
```

```swift
protocol BookFactoryProtocol {
  func createBook(id: String, title: String, authors: [String]) -> BookProtocol
}

```

```swift
var isMock: Bool = false
class BookFactory: BookFactoryProtocol {
    func createBook(id: String, title: String, authors: [String]) -> BookProtocol {
     return isMock ? MockBook(id: id, title: title, authors: authors) : Book(id: id, title: title, authors: authors)
  }
}
```

```swift
struct MockBook: BookProtocol {
  let id: String
  let title: String
  let authors: [String]
  func info() {
    print("This is Mock Book")
  }
}
```


```swift
struct Book: BookProtocol {
  let id: String
  let title: String
  let authors: [String]
  func info() {
    print("\(title)/\(authors)")
  }
}
```

## 参考

