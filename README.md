# テーブル設計

| Colum              | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

| Colum              | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |

- has_many :room_users
- has_many :rooms, through: :room_users
- has_many :messages

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| user               | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

- belongs_to :room
- belongs_to :user

| Colum              | Type       | Options                        |
| ------------------ | ---------- | ------------------------------ |
| content            | string     |                                |
| user               | references | null: false, foreign_key: true |
| room               | references | null: false, foreign_key: true |

- belongs_to :room
- belongs_to :user