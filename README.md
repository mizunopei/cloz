# Cloz
![demo](https://user-images.githubusercontent.com/55831482/71306102-97f19700-241f-11ea-92fb-ee90b25af918.gif)
## 概要
  衣服や小物を管理するためのクローゼットアプリです。
  購入した衣服などの個数や金額を保存する家計簿の役割も担います。

## リンク
* https://cloz.herokuapp.com/

* テスト用アカウント
  * Email: test@test.com
  * パスワード: test1234

## 制作背景
より衣服の管理に特化したアプリが欲しいと考えたためです。既存のアプリを使用時、入力欄が多く、時間が掛かることから途中で使用を辞める事がありました。
またコーディネートの提案機能などのオプション機能は、着用したいアイテムからコーディネートを考えたい方にとっては、あまり必要のない機能ではないかと感じました。
* 入力欄を少なくし、ユーザーの負担量を減らす
* 老若男女問わず使用して頂けるようなデザイン、操作性
* 価格入力欄による家計簿の役割

以上の3点に注力しアプリ開発に励みました。


## 機能
* ユーザー新規登録、ログイン、ログアウト
* Itemの保存、閲覧、編集
[![Image from Gyazo](https://i.gyazo.com/d2d289d0ea954a0709c84a967e5447c4.png)](https://gyazo.com/d2d289d0ea954a0709c84a967e5447c4)

![demo](https://user-images.githubusercontent.com/55831482/71307227-9b404f00-242e-11ea-8af9-2c24e52ee099.gif)


* カテゴリー、カラーごとの表示
![demo](https://user-images.githubusercontent.com/55831482/71306349-50b8d580-2422-11ea-9f95-0848c799bad2.gif)

* ドラックアンドドロップによる並び替え、削除機能
![demo](https://user-images.githubusercontent.com/55831482/71306276-91641f00-2421-11ea-82f4-8fb3db571b30.gif)

* 金額、個数の合計値をマイページ上で表示（家計簿の役割）
[![Image from Gyazo](https://i.gyazo.com/b7c21e36cfe2ffdec35b8a4634989fe8.png)](https://gyazo.com/b7c21e36cfe2ffdec35b8a4634989fe8)


## 使用技術
* Haml(HTML)
* Sass(CSS)
* Ruby on Rails
* jQuery
* MySQL(開発環境)
* PostgreSQL(本番環境)
* Heroku


## ER図
[![Image from Gyazo](https://i.gyazo.com/6c875e67986d92ce461c627d4e506010.png)](https://gyazo.com/6c875e67986d92ce461c627d4e506010)
