# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## whishesテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|
|user_id|integer|

### Association
- belongs_to :user
- belongs_to :check


## checksテーブル

|Column|Type|Options|
|------|----|-------|
|wish_id|integer|

### Association
- has_many :wishes


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, add_index|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|

### Association
- has_many :wishes




