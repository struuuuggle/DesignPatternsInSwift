#  Interpreter
文法規則をクラスで表現する

## どんなものか
Interpreterは「通訳」を意味する。
一定の文法をもつ独自言語を解析し、解析結果に応じて何らかの処理を行っていく。
独自言語の例として、SQLやBNF、正規表現、DOT言語等がある。

## 登場人物
### Abstract Expression(抽象的な表現)
構文木のノードの共通のインターフェースを定める
> サンプルプログラムのNodeプロトコル

### TerminalExpression(終端となる表現)
BNFのターミナルエクスプレッションに対応する役
> サンプルプログラムのPrimitiveCommandNode

### NonterminaExpression(非終端となる表現)
BNFのノンターミナルエクスプレッションに対応する役
> サンプルプログラムのProgramNode, CommandNode, RpeatCommandNode, CommandListNode

### Context(文脈/前後関係の役)
インタプリタが構文解析を行うための情報を提供する
> サンプルプログラムのContext

### Client(依頼者)
構文木を組み立てるためにTerminalExressionやNonterminalExpressionを呼ぶ出す役
> サンプルプログラムのClient+Interpreter

## どんなメリットがあるか
[増補改訂版 Java言語で学ぶデザインパターン入門](https://www.hyuki.com/dp/)には次のような記述がある。
> デザインパターンの目的の1つはクラスの最理性を高めることでした。
> 再利用性とは、一度作成したクラスをあまり修正せずに（できればまったく修正せずに）何度も使えるようにすることです。

Interpreterパターンでは実装した独自言語を呼び出すことで行う処理は独自言語の解析結果により一意に決まるため、解決したい問題が変わったとしても実装したクラスや構造体を変更する必要がない。
変更は独自言語の呼び出し方のみになる。
SQLを使って様々なデータを操作したい場合に、SQLの中の実装を変更する必要はなく記述するSQLさえ変更すればいいイメージ。

