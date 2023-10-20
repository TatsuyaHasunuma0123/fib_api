## deploy 
[https://fib-g5fc.onrender.com] (by [render](https://render.com/))

## Installation
```
bundle install
rails s
```

## 説明
- ### ```config/routes.rb```
  - ```"/"``` , ```"/fib?n=x"```のルーティングの設定
- ### ```app/controller/fibonacci_controller.rb``` 
  -  ```calculate```
      - パラメータ```:n```を受け取り、正規表現を用いて1以上の整数かどうかを判定
      - n項目の値を計算し任意のjsonを返す
  - ```fibonacci(n)```
    - フィボナッチ数列における、n項目の値を計算する
    - メモ化を用いることで計算時間を短縮している 
- ### ```test/fibonacci_controller_test/routes.rb```
  - パラメータが5,10,1,0,"string"の際のtestを記述
## 補足
- ```rails new fibonacci --api```で雛形を作成
- ```rails generate controller``` でコントローラ及びtestを作成

