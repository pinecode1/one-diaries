

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

・has_many :diaries
・has_many :likes

# Diariesテーブル
|Column|Type|Options|
|------|----|-------|
|content||null: false|
### Association

・belongs_to :user
・has_many :likes

# Likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id||null: false|
|diary_id||null: false|

### Association
・belongs_to :user
・belongs_to :diary
