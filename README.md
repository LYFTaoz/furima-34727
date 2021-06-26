# README

# テーブル設計

## usersテーブル

| Column                | Type      | Options                        |
| --------------------- | --------- | ------------------------------ |
| nickname              | string    | null: false                    |
| email                 | string    | null: false, unique: true      |
| encrypted_password    | string    | null: false                    |
| family_name           | string    | null: false                    |
| fast_name             | string    | null: false                    |
| family_name_kana      | string    | null: false                    |
| fast_name_kana        | string    | null: false                    |
| birth_day             | date      | null: false                    |

### Association

- has_many :items
- has_many :buys

## buysテーブル

| Column       | Type       | Options                        |
| -------------| ---------- | ------------------------------ |
| user         | references | null: false, foreign_key: true |
| item         | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- belongs_to :items
- has_one :delivery_destination


## delivery_destinations

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| buy              | references | null: false, foreign_key: true |
| post_code        | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| city             | string     | null: false                    |
| address          | string     | null: false                    |
| building_name    | string     |                                |
| phone_number     | string     | null: false                    |

### Association

- belongs_to :buy

## itemsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| user             | references | null: false, foreign_key: true |
| item_name        | string     | null: false                    |
| description      | text       | null: false                    |
| category_id      | integer    | null: false                    |
| status_id        | integer    | null: false                    |
| shipping_cost_id | integer    | null: false                    |
| ship_from_id     | integer    | null: false                    |
| shipping_day_id  | integer    | null: false                    |
| price            | integer    | null: false                    |


### Association

- belongs_to :user
- has_one :buy
