#  Chain of Responsibility
責任のたらい回し

## どんなものか
RxSwiftやStream APIでよく見るメソッドチェーンを実現するためのパターン。
実際にコードを見たほうが早いと思うので、サンプルコードを見てみる。

```swift
_ = alice
    .setNext(next: bob)
    .setNext(next: charlie)
    .setNext(next: diana)
    .setNext(next: elmo)
    .setNext(next: fred)

alice.support(Trouble(number))
```
`setNext(_:)`が数珠のようにつながり呼び出されている。`setNext(_:)`の実装をみてみる。

```swift
class Support {
...
    func setNext(next: Support) -> Support {
        self.next = next
        return next
    }
...
}
```
`setNext(_:)`の返り値の型を自身のクラスの型と一致させることで、メソッドチェーンを実現している。

## 登場人物
- Handler

要求を処理するAPIを定めるプロトコル。
「次の人」を保持しておき、自分が処理できない要求が来たら次の人にたらい回す。
サンプルコードでは、Supportクラスが担う。

- ConcreteHandler

Handlerの実装役。
サンプルコードでは、NoSupport、LimitSupport、OddSupport、SpecialSupportが担う。

- Client

最初のConcreteHandlerに要求を出す役割。
サンプルプログラムではMainクラスが担う。

## いつ使うか
処理の流れを明確にし、可読性の高いコードを書きたい場合には非常に重宝する。
近年はメソッドチェーンを実現するライブラリが多く出回っており、メンテナンスも頻繁に行われているので、Chain of Responsibilityの仕組みそのものを再発明する場面はそう多くないはず。


シンプルなコーディングを実現する一方で、呼び出す関数が増える分処理速度やコンパイル時間に影響を与える。可読性とパフォーマンスがトレードオフの関係であることを把握した上で使うことが大切。

## 参考
- [Implementing Your Own Operators
](http://reactivex.io/documentation/implement-operator.html)
