#  Abstract Factory
関連する部品を組み合わせて製品を作る
​
## どんなものか
> 部品の具体的な実装には注目せず、インターフェース(API)に注目する。そして、そのインターフェース(API)だけを使って、部品を組み立て製品にまとめる。
​
クライアントはFactoryと、Factoryが生成するProductのインターフェース(API)だけ知っている。
Factoryの内部でProductが生成される手順や、Productの具体的な仕様は全く知らない。
​
## いつ使うか
エンドポイント毎のHTTPRequestクラスの生成のときには使えそう。BaseRequestProtocolを作り、pathやheader、parameterなど、HTTPRequestクラスに必要なプロパティを定義しておく。BaseRequestProtocolにextensionを生やしてcreateRequestメソッドを定義する。createRequestメソッドはRequestインスタンスを返すようにしておく。
​
## どんなメリットが有るか
Factoryのサブクラスを追加するのは簡単。サブクラスをどんなに追加しても、Factoryのインターフェースを修正する必要は全くない。
​
逆にデメリットもある。
Abstract Factoryクラスに部品を新しく追加するのは困難。Abstract Factoryに新しくcreatePictureを追加しようとすると、Abstract Factoryを継承している全てのFactoryサブクラスも変更しなければならない。

## 参考
- [Swift Alamofire+RxSwift+CodableでAPIクライアントを作る](https://qiita.com/H_Crane/items/d2d316b086745417ffae)
