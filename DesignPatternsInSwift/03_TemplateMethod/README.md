#  Template Method
具体的な処理をサブクラスにまかせる

## どんなものか
スーパークラスで処理の枠組みを定め、サブクラスでその具体的内容を定める。
UIKitのViewのライフサイクルメソッドがいい例

## いつ使うか
実際にどのような場面で適用するかは正直ピンときてない。
ユーザーのアクションに対する処理の記述はTemplate Methodを適用すると良さそう？
例えば、ユーザーがツイートボタンを押した後の処理は、次のような手順だとする。
```
ツイートをタイムラインに反映 → サーバにツイートを保存 → タイムラインを最新の状態に更新
```
ツイートはテキストのみの場合もあるし、画像や位置情報が含まれることもあるため、ツイート内容に応じて `サーバにツイートを保存`の処理は変わる。
手順はプロトコル(やスーパークラス)で定義しておいて、手順毎の具体的な処理はサブクラスで実装する、というのがTemplate Method。

## どんなメリットがあるか
- ロジックが共通化できる。
プロトコル(Javaならスーパークラス)でアルゴリズムや処理手順が定義されているため、サブクラスでの実装は具体的な処理のみになる。

## 参考
- [リスコフの置換原則](https://ja.wikipedia.org/wiki/%E3%83%AA%E3%82%B9%E3%82%B3%E3%83%95%E3%81%AE%E7%BD%AE%E6%8F%9B%E5%8E%9F%E5%89%87)
- [クソコード動画「共通化の罠」](https://twitter.com/minodriven/status/1127539251761909760)
