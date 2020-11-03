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

### テーブル設計
# users テーブル

Column    |Type   |Option
-------------------------
email     |string |NOT NULL
password  |string |NOT NULL
name      |string |NOT NULL
profile   |text   |NOT NULL
occupation |text  |NOT NULL
position  |text   |NOT NULL

# Association
- has_many :prototypes
- has_many :comments


# prototypes テーブル
Column     |Type  |Option
-----------------------------
title      |string |NOT NULL
catch_copy |text  |NOT NULL
concept    |text |NOT NULL
image      |ActiveStorageで実装||
user       |references型||

# Association
- belongs_to :user
- has_many :comments

# commentsテーブル
Column    |Type |Option
-----------------------
text      |text |NOT NULL
user      |references型|
prototype |references型|