# README

## アプリ名
ticket-count
## URL
https//ticket-count.herokuapp.com/
## ID/Pass
ID:admin, Pass:1234
## テスト用アカウント
checkユーザー  メールアドレス:check@gmail.com,パスワード：c11111
countユーザー  メールアドレス:count@gmail.com,パスワード：c22222
## 利用方法
食事券の枚数を入力し、数を管理するためのアプリです。
## 目指した課題解決
専用用紙一枚に記入して管理しており、度々記入ミスが発生している現状を改善するために、
シンプルで使い易いシステムを目指しました。
## 洗い出した要件
ユーザー登録機能：カウント担当、チェック担当のユーザー登録
枚数カウント機能：食券の利用枚数の登録
枚数チェック機能、一覧機能：食券の入荷枚数の登録、未使用分・在庫の確認
## 実装した機能　画像・GIF　DEMO
トップ画面
[![Image from Gyazo](https://i.gyazo.com/b277a61d0bb5c3c7f577a40c52cf3a34.png)](https://gyazo.com/b277a61d0bb5c3c7f577a40c52cf3a34)

新規登録
[![Image from Gyazo](https://i.gyazo.com/a75140a21e937c1101748b41bb9cbe37.gif)](https://gyazo.com/a75140a21e937c1101748b41bb9cbe37)
ログイン
[![Image from Gyazo](https://i.gyazo.com/39e12973daf7bd28fe3e22f28ea13d4c.gif)](https://gyazo.com/39e12973daf7bd28fe3e22f28ea13d4c)
チェック画面にて入力後一覧画面へ
[![Image from Gyazo](https://i.gyazo.com/82ac430210625fca0077b659c6a8cf16.gif)](https://gyazo.com/82ac430210625fca0077b659c6a8cf16)
カウント画面にて入力後一覧画面へ
[![Image from Gyazo](https://i.gyazo.com/0830482600199cad88bf0a4d90138c32.gif)](https://gyazo.com/0830482600199cad88bf0a4d90138c32)
ログアウト
[![Image from Gyazo](https://i.gyazo.com/77872043ae0393122b8b200affbef09c.gif)](https://gyazo.com/77872043ae0393122b8b200affbef09c)


## 実装予定
入力情報の編集機能

## データベース設計
### usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| position           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association
- has_many :counts
- has_many :checks

### countsテーブル

| Column           | Type       | Options                        |
| -----------------| ---------- | ------------------------------ |
| date             | date       | null: false                    |
| prepared_number  | integer    | null: false                    |
| handed_number    | integer    | null: false                    |
| unused           | integer    | null: false                    |
| user             | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## checksテーブル

| Column  | Type       | Options                        |
| --------| ---------- | ------------------------------ |
| arrival | integer    | null: false                    |
| stock   | integer    | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## ローカルでの動作方法、パッケージ
git clone https://github.com/ake3/ticket-count.git
動作確認：上記テスト用アカウントにてログイン→必要事項を入力、一覧画面を確認
開発環境：Ruby/Ruby on Rails(6.0.4.4)/MySQL/Github/Visual Studio Code