

# NewRead
日記を保存するアプリ。

# Description
ユーザー登録をしたユーザーが、文章のみの日記を保存できる。

# Usage
ユーザーの日記を記録・表示させることができる。

# DB設計

# Usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association

# Diariesテーブル
|Column|Type|Options|
|------|----|-------|
| ||null: false|
| ||null: false|
| ||null: false|
### Association

# Likesテーブル
|Column|Type|Options|
|------|----|-------|
| ||null: false|
| ||null: false|
| ||null: false|

### Association
