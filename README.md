

# NewRead
ユーザーの日記を記録するアプリ。

# Description
ユーザー登録をしたユーザーが、文章のみの日記を保存・公開できる。

# Usage
ユーザーごと日記を記録・表示させる。

# DB設計

# Usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association

- has_many :diaries
- has_many :likes

# Diariesテーブル
|Column|Type|Options|
|------|----|-------|
|content|string|null: false|
### Association

- belongs_to :user
- has_many :likes

# Likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|diary_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :diary
