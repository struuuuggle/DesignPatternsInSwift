#  Decorator
飾り枠と中身の同一視

## どんなものか
インターフェースの変更なしに、機能の追加ができる。
委譲を使って実装できるため、クラスの継承関係を変更することなく機能拡張したインスタンスを作成可能。

## 登場人物
- Component
ある機能を実現するプロトコル。
- ConcreteComponent
Componentの実装クラス。
- Decorator
Componentと同じAPIをもつ。また、自分が装飾する対象のComponentを知っている。実装的に言い換えると、Decoratorは装飾対象のComponentをプロパティとしてもつ。
- ConcreteDecorator
Decoratorの実装クラス

## いつ使うか
インスタンスに対して、機能の拡張を行いたいとき。
サンプルコードの`main`メソッドで生成した`d1~d4`のインスタンスは全て同一クラスにも関わらず、`d1`より`d2`、`d2`より`d3`...というように、振る舞い(機能)をどんどん拡張(追加)している。
これを愚直に実現しようとすると、振る舞いに応じてクラスやメソッドを一つ一つ作ることになってしまう。
Decoratorを使えば、拡張元インスタンスのクラスを変更することなく、機能拡張していくことができる。
