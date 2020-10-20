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

# テーブル設計

## users テーブル

| Column          | Type   | Options                          |
| --------------- | ------ | -------------------------------- |
| nickname        | string | null: false                      |
| email           | string | null: false, uniqueness: true    |
| password        | string | null: false, uniqueness: true    |
| first_name      | string | null: false                      |
| last_name       | string | null: false                      |
| first_name_kana | string | null: false                      |
| last_name_kana  | string | null: false                      |
| birth_data      | data   | null: false                      |


### Association

- has_many :items
- has_many :orders

## items テーブル

| Column          | Type        | Options     |
| --------------- | ----------- | ----------- |
| name            | string      | null: false |
| discription     | text        | null: false |
| price           | integer     | null: false |
| category        | integer     | null: false |
| condition       | integer     | null: false |
| send_method     | integer     | null: false |
| destination     | integer     | null: false |
| delivery_period | integer     | null: false |
| image           |             |             |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_one :order


## orders テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| items         | references | null: false, foreign_key: true |
| user          | references | null: false, foreign_key: true |
| addresses     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :addresses

## addresses テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| postal_code   | string     | null: false                    |
| prefectures   | integer    | null: false, foreign_key: true |
| city          | string     | null: false                    |
| address       | string     | null: false                    |
| building_name | string     |                                |
| phone_number  | string     | null: false                    |
| order         | references | null: false, foreign_key: true |


### Association

- belongs_to :order
