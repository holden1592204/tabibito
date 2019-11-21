# README

# README

## cities_users テーブル
|Column|Type|Option|
|------|----|------|
|user_id|integer|null: false,foreign_key: true|
|city_id|integer|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :citie

## users テーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, foreign_key: true|
|name|string|null: false, foreign_key: true|
### Association
- has_many :cities, through:   :cities_users
- has_many :coments
- has_many :cities_users

## cities テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
### Association
- has_many :coments
- has_many :cities_users
- has_many :users, through:  cities_users

## coments テーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|user_id|integer|null: false, foreign_key: true|
|image|string||
|cities_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :city
- belongs_to :user

