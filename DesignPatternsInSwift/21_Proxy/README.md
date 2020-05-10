# Proxy
必要になってから作る 

![UML](https://raw.githubusercontent.com/struuuuggle/DesignPatternsInSwift/master/img/Proxy.jpg)

## どんなものか
Proxy  = 「代理人」。
本人でなくともできる仕事を代理人におこなわせる。
代理人はあくまで代理に過ぎないため、本人にしかできない仕事もある。
そういうときは代理人が本人に仕事を依頼する。

## 登場人物
### Subject(主体)
ProxyとRealSubjectを同一視するためのインターフェース。
Clientは呼び出すものがProxyなのかRealSubjectなのかを意識する必要がなくなる。
ブラウザ(Client)がプロキシ(Proxy)から受け取ったデータなのかとあるWebサーバから受け取ったデータなのかを意識せずに描画できるようなイメージ。
> サンプルプログラムのPrintableインターフェース

### Proxy(代理人)
Clientからの要求をできるだけ処理する。Proxy自身で要求を捌けない場合はRealSubjectに処理をお願いする。
このときProxyがRealSubjectを生成する。
> サンプルプログラムのPrinterProxyクラス

### RealSubject(実際の主体)
ProxyがClientからの要求に応えられなくなったときに登場する、「本人」役。
たとえば、ブラウザが過去に閲覧したことのあるページを表示するとする。
ブラウザはプロキシがもっているキャッシュを使用してページを表示することを試みたが、有効期限が切れていた。
しょうがないので、ブラウザが本家のサーバからデータをフェッチしてページを描画することにした。
この本家のサーバにあたるのがRealSubject。

### Client(依頼人)
Proxyを利用する者。ブラウザでいるHTTPプロキシ。

## どんなメリットがあるか
具体例を挙げてみる。
- 生成コストの大きいインスタンスの生成を遅延または回避し、メモリ消費量を抑える(FlyWeightとの相性が良い👍🏻)
- ネットワークリソースの消費量を削減(キャッシング)
- (GoFのProxyパターンの趣旨からはややずれるが)通信処理実装時のデバッグが可能になる(Charles Proxy)


## さまざまなプロキシ
### Virtual Proxy
必要になった時にRealSubjectを生成するタイプのプロキシ
> WebブラウザのHTTPプロキシなど
### Remote Proxy
ネットワークの向こう側にいるのにも関わらず、あたかもローカルにいるかのように呼び出すことができるタイプのプロキシ
> JavaのRMIなど
### Access Proxy
RealSubjectの機能の呼び出しに制限を設けるタイプのプロキシ
> いわゆるProxy Serverなど
