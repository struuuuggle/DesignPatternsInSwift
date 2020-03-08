#  Visitor
構造を渡り歩きながら仕事をする

## どんなものか
Visitorパターンの目的はデータ構造から処理を分離すること。
単純に全ての要素に対して処理を行いたい場合は、Compositeパターンを使えばよい。しかし、それではデータ構造の中にビジネスロジックを埋め込むことになる。

比較対象として、Compositeパターンのサンプルコードをみてみる。
複数のDirectoryやFileをもつrootDirectoryに対して、`printList()`を呼び出す。rootDirectoryはDirectoryクラスであるため、Directoryクラスの中に、printListの具体的な処理が書かれている。言い換えれば、Directoryクラスの中にビジネスロジックが書かれてしまっている。
```swift
rootDirectory.printList()
```

## 実装上のポイント
###  ダブルディスパッチ
ElementとVisitorの実装を見てみると、次の対の関係があることがわかる。これを一般に*ダブルディスパッチ*という。
```swift
// Elementによるvisitor受け入れメソッド
element.accept(visitor)

// VisitorによるElement訪問メソッド
visitor.visit(element)
```

## 登場人物
- Visitor
データ構造の具体的な要素ごとに、訪問したことを表すvisitメソッドを定義するインターフェース
- ConcreteVisitor
Visitorの実装クラス
- Element
Visitorの訪問先となる要素を表すインターフェース
- ConcreteElement
Elementの実装クラス
- ObjectStructure
Element役の集合を扱うクラス

## いつ使うか

