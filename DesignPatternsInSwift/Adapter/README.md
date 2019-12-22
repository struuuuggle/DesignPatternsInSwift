#  Adapter
一皮かぶせて再利用する

## どんなものか
すでに提供されているものと、必要なものの間のずれを埋めるパターン。別名Wrapperパターンともいう。

## いつ使うか
上に書いた通り。UIKitで提供されているViewをSwiftUIでも再利用するシチュエーションなどがいい例。

## どんなメリットがあるか
実装においては、フルスクラッチで実装することよりも既存のAPIやComponentを再利用することが多いと思う。
再利用する部品(Adaptee)の動作がテストや使用実績によって保証されていれば、バグが発生してもAdapterの部分を重点的にデバッグすれば良いので、コーディングが楽になる。

## 参考
[SwiftUI-SearchBar](https://github.com/struuuuggle/SwiftUI-SearchBar)
