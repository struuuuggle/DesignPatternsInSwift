#  Composite
容器と中身の同一視

## どんなものか
Compositeパターンは容器と中身を同一視するパターン。言い換えれば、複数のものを単数をみなすパターン。
サンプルコードではファイルシステムを例に挙げている。

## 登場人物
- Leaf
「中身」を表す役割。
- Composite
「容器」を表す役割
- Component
LeafとCompositeを同一視するための役割s

## when to use
再帰的な構造、特に木構造を実装するときには重宝する。
一般的に木構造になるデータ構造はCompositeパターンに当てはまるため、子要素を持つリストや組織構造を実現するときはCompositeパターンを使うと良い。