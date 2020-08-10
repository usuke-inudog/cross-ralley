# README

## アプリ名
Cross×Rally

## 概要
チャット機能を用いて、テニスの試合マッチングを行うことのできるアプリです。
試合後には、対戦相手を様々なステータスを用いて評価することで、自分の実力を客観的に把握し、同じ実力を持ったプレイヤーとの対戦を行いやすい環境作りをサポートします。<br>
また、記事投稿機能を用いて様々なテニス情報をユーザーが発信できるようになっています。

## 本番環境
http://175.41.244.232

## テスト用アカウント
mailaddress:sample999@sample.com<br>
password:123456<br>

## 制作背景
私自身がテニスをしていた時、大会に出ない限り、一緒に試合や練習をするプレイヤーが固定化していると感じました。
個人競技という性質や相手との実力差で相手を誘うハードルが高くなっていることが問題だと考え、なるべくカジュアルに対戦が成立するようこのアプリを開発しました。<br>
また、レーダーチャートを用いた能力評価システムを実装することで既存のSNSとの差別化を計りました。

## DEMO
### トップページ
![トップページ](https://user-images.githubusercontent.com/66010511/89746207-7f8bd500-daf3-11ea-89c6-8186c873d38d.jpg)
### 試合に誘う
![試合に誘う](https://user-images.githubusercontent.com/66010511/89746236-9df1d080-daf3-11ea-8217-a4349dfcbae4.gif)
### ランキング
![ランキング](https://user-images.githubusercontent.com/66010511/89746254-b366fa80-daf3-11ea-8790-406ad46aebb4.gif)
### 記事画面
![記事](https://user-images.githubusercontent.com/66010511/89746336-0b056600-daf4-11ea-92f3-d24ae956ccf7.gif)

## 工夫したポイント
まず第一に既存のSNSで試合や練習に誘えば良いと言う感想をもたれないことを意識しました。そしてこのアプリオリジナルとなる対戦相手評価機能、レーダーチャートを用いたステータス表示機能を実装しました。
次に試合の申込から対戦相手の評価までの処理をmatchingテーブルの試合予定日、status(申込中or承認済)、評価終了フラグ（user.idを入れることで評価終了）という複数のカラムを条件付けし、
スケジュール一覧から管理できるようにしました。

## 使用技術(開発環境)
Ruby '2.6.5'<br>
Rails 6.0.3.2'<br>
mysql2 '0.4.4'<br>
AWS/S3<br>

## 課題や今後実装したい機能
・近くのコート検索機能<br>
・レーティング機能<br>

## DB設計
DB設計は以下の通りです。
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, uniqueness: true|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many  :group_users
- has_many  :groups, through: :group_users
- has_many  :messages
- has_many  :artcles
- has_many  :comments
- has_many  :favorites
- has_one   :profile
- has_many  :matchings
- has_many  :userstatus
- has_many  :evaluation_histories

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|
|age|string|null: false|
|gender|string|null: false|
|introduction|text|null: false|
|address|string|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## userstatusesテーブル
|Column|Type|Options|
|------|----|-------|
|rate|integer|null: false|
|footwork|integer|null: false|
|stamina|integer|null: false|
|service|integer|null: false|
|receive|integer|null: false|
|volley|integer|null: false|
|forehand|integer|null: false|
|backhand|integer|null: false|
|mental|integer|null: false|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user

## evaluation_historiesテーブル
|Column|Type|Options|
|------|----|-------|
|footwork|integer|null: false|
|stamina|integer|null: false|
|service|integer|null: false|
|receive|integer|null: false|
|volley|integer|null: false|
|forehand|integer|null: false|
|backhand|integer|null: false|
|mental|integer|null: false|
|matching_id|references|null: false, foreign_key: true|
|evaluated_user_id|references|null: false, foreign_key: true|
|evaluate_user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :matching

## matchingsテーブル
|Column|Type|Options|
|------|----|-------|
|host_user_id|references|null: false, foreign_key: true|
|guest_user_id|references|null: false, foreign_key: true|
|match_type|string|null: false|
|scheduled_date|date|null: false|
|sheduled_time|time|null: false|
|place|string|null: false|
|response_deadline|date|null: false|
|status|string|null: fase|
|completed_host_user_id|references|null: false, foreign_key: true|
|compeleted_guest_user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :evaluation_histroies

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, unique: true|
### Association
- has_many  :group_users
- has_many  :users, through: :group_users
- has_many  :messages

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|group_id|references|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|text|text||
|group_id|references|foreign_key: true, null: false|
|user_id|references|foreign_key: true, null: false|
### Association
- belongs_to :user
- belongs_to :group

## artcles
|Column|Type|Options|
|------|----|-------|
|title|text||
|text|text||
|image|text||
|video|text||
|user_id|references|foreign_key: true|
### Association
- belongs_to  :user
- has_many    :comments
- has_many    :favorites

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true|
|artcle_id|references|foreign_key: true|
|comment|text|
### Association
- belongs_to  :artcle
- belongs_to  :user

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|foreign_key: true, null: false|
|artcle_id|references|foreign_key: true, null: false|
### Association
- belongs_to :user
- belongs_to :artcle
