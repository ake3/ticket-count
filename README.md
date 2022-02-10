# README

## アプリ名
ticket-count
## URL

## テスト用アカウント

## 利用方法
食事券の枚数を入力し、数を管理するためのアプリです。

## 目指した課題解決
1枚の紙で管理しており、度々記入ミスが発生している現状を改善するためにシンプルで使い易いアプリを目指しました。

## 洗い出した要件
ユーザー登録機能、枚数カウント機能、枚数チェック機能、一覧機能

## 実装した機能　画像・GIF　DEMO

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
| item    | references | null: false, foreign_key: true |

### Association
- belongs_to :user

## ローカルでの動作方法　コマンド　パッケージ