#  Memento
状態を保存する

## どんなものか
Mementoは「記念品」という意味。

ある時点の状態をインスタンスとして保持することで、Undo/Redo/History/Snapshot等を実現する。

## 登場人物
### Originator(作成者)
自分の現在の状態を保存したいときにMementoを作る。
以前のMementoが渡されると、そのMementoを作った時点の状態に戻る。
> サンプルプログラムのGamerクラスがOriginator役

### Memento(記念品)
> サンプルプログラムではMementoクラスがMemento役(名前はそのまま)

Originator役の内部情報をまとめる。
MementはOriginaotorの内部情報を持っているが、publicに公開するわけではない。
Mementoは次の2つのインターフェースを持っている

#### wide interface(広いインターフェース)
オブジェクトの状態をもとに戻るために必要な情報が全て得られるメソッドの集合
内部状態をさらけ出すことになるため、Originatorだけがwide interfaceを使えるようにしておく。

#### narrow interface(狭いインターフェース)
外部のCaretakerに見せるもの。
内部状態を必要以上に外部にさらけ出すことを防ぐ。

### Caretaker(世話をする人)
> サンプルプログラムではClientクラスがCaretaker役

現在のOriginatorの状態を保存したいときに、そのことをOriginatorに伝える。
Originatorはそれを受けて、Mementoを作り、Caretakerに渡す。
Caretakerは将来に備えMementoを保存する。

Caretakerが使えるMementoのインターフェースは「狭いインターフェース」のみ。
サンプルコードでも`Client`クラスが使用しているMementoのメソッドは`getMoney()`だけである。
それ以外はOriginatorが作ったMementoをひとかたまりのブラックボックスとしてまるごと保存するだけ。

## どんなときに使うか
ゲームのセーブデータやエディタに使われていることは明らか。

他の例を挙げてみる。たとえば、入力項目が複数あるフォーム画面の入力情報。
iPhoneにはMacの**⌘ + Z**に相当するUndoボタンがない。Mementoを保持しておけば誤って入力中の情報を削除してしまった場合にタップ１つで復元できる。
サンプルコードでは保持するMementoが１つだけだったが、複数保持すれば何度も履歴を辿ったり、Redo機能も実装できる。
PC上で入力する場合はUndoできるが、スマートフォンアプリでUndo機能を備えたものは見たことがない。
作ったらヒットしそうな予感。

## 補足
今回のサンプルコードではMementoをインスタントとしてオンメモリに保持したが、Mementoをシリアライズしてストレージに保存することも可能。
オンメモリに保持するときにはフールプルーフ設計が目的になるが、ストレージの場合はデータのバックアップとして扱われる。
同じMementoでも、保持する場所によってMementoを取り扱うペルソナが真逆になるのは面白い。
