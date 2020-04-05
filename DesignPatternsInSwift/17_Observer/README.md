#  Observer
状態の変化を検知する

## どんなものか
観察対象の状態が変化すると、観察者に対して通知される。

## 登場人物
### Subject(観察される側)
Subjectは観察者であるObserverを登録/削除する。(サンプルコードでは削除機能を省略した)
サンプルコードではNumberGeneratorがSubjectを務めた。

### ConcreteSubject
Subjectを実装する役。
サンプルコードではRandomNumberGeneratorがConcreteSubjectを務めた。

### Observer(観察する側)
Subjectから状態が変化したことを教えてもらう。
サンプルコードではObserverプロトコルがObserverを務めた。

### ConcreteObserver
Observerを実装する役。
サンプルコードではsDigitObserverとGraphObserverがConcrteObserverを務めた。

## どんなときに使うか
Reactive programmingには欠かせない。もう当たり前のように使っているので、ここであえてその重要性については書かない。
