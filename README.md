# README

# テーブル設計

## usersテーブル

| Column                | Type      | Options          |
| --------------------- | --------- | ---------------- |
| nickname              | string    | null: false      |
| email                 | string    | null: false      |
| password              | string    | null: false      |
| password_confirmation | string    | null: false      |
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

| Column       | Type     | Options          |
| -------------| -------- | -----------------|
| user_id      | integer  | null: false      |
| customer_id  | string   | null: false      |
| card_id      | string   | null: false      |


### Association

- belongs_to :user

## Delivery_destination

| Column           | Type     | Options                        |
| ---------------- | -------- | ------------------------------ |
| user_id          | integer  | null: false, foreign_key: true |
| family_name      | string   | null: false                    |
| fast_name        | string   | null: false                    |
| family_name_kana | string   | null: false                    |
| fast_name_kana   | string   | null: false                    |
| post_code        | integer  | null: false                    |
| prefecture_id    | integer  | null: false                    |
| city             | string   | null: false                    |
| address           | string   | null: false                   |
| building_name    | string   |                                |
| phone_number     | string   | null: false                    |

### Association

- belongs_to :user

## itemsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| name             | string     | null: false                    |
| description      | text       | null: false                    |
| category         | references | null: false, foreign_key: true |
| status_id        | integer    | null: false                    |
| shipping_cost_id | integer    | null: false                    |
| ship-from_id     | integer    | null: false                    |
| shipping_days_id | integer    | null: false                    |
| price            | integer    | null: false                    |
| seller           | references | null: false                    |

### Association

- has_many :item-images
- belongs_to :user
- belongs_to :categories
- belongs_to :brand

## item_imagesテーブル

| Column    | Type       | Option                        |
| --------- | ---------- | ----------------------------- |
| image     | string     | null: false                   |
| item      | references | null: false,foreign_key: true |

### Association

- belongs_to :items

## categoriesテーブル

| Column    | Type       | Option                        |
| --------- | ---------- | ----------------------------- |
| name      | string     | null: false                   |
| path      | integer    | null: false                   |

### Association

has_many :items

## brandテーブル

| Column    | Type       | Option                        |
| --------- | ---------- | ----------------------------- |
| name      | string     | index: true                   |

### Association

has_many :items