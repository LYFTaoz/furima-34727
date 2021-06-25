# README

# テーブル設計

## usersテーブル

| Column                | Type      | Options          |
| --------------------- | --------- | ---------------- |
| nickname              | string    | null: false      |
| email                 | string    | null: false      |
| encrypted_password    | string    | null: false      |
| family_name           | string    | null: false      |
| fast_name             | string    | null: false      |
| family_name_kana      | string    | null: false      |
| fast_name_kana        | string    | null: false      |
| birth_day             | date      | null: false      |

### Association

- has_many :items
- has_one :card
- has_one :Delivery_destination

## cardテーブル

| Column       | Type     | Options                        |
| -------------| -------- | ------------------------------ |
| user_id      | integer  | null: false, foreign_key: true |
| item_id      | string   | null: false                    |


### Association

- has_one :user

## Delivery_destination

| Column           | Type     | Options                        |
| ---------------- | -------- | ------------------------------ |
| card_id          | integer  | null: false, foreign_key: true |
| post_code        | string   | null: false                    |
| prefecture_id    | integer  | null: false                    |
| city             | string   | null: false                    |
| address          | string   | null: false                    |
| building_name    | string   |                                |
| phone_number     | string   | null: false                    |


## itemsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| description      | text       | null: false                    |
| category_id      | integer    | null: false                    |
| status_id        | integer    | null: false                    |
| shipping_cost_id | integer    | null: false                    |
| ship_from_id     | integer    | null: false                    |
| shipping_day_id  | integer    | null: false                    |
| prefecture_id    | integer    | null: false                    |
| price            | integer    | null: false                    |
| user_id          | integer    | null: false,foreign_key: true  |

### Association

- has_many :item-images
- belongs_to :user
- belongs_to :categories
- belongs_to :brand
