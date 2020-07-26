# README

## アプリ名
Cross×Rally

## 概要
チャット機能を用いて、テニスの試合マッチングを行うことのできるアプリです。
また、試合後には対戦相手を様々なステータスを用いて評価したり、レーティングを採用することで、自分の実力を客観的に把握し、同じ実力を持ったプレイヤーとの対戦を行いやすい環境作りをサポートします。

## 制作背景
私自身がテニスをしていた時、大会に出ない限り、一緒に試合や練習をするプレイヤーが固定化していると感じました。
個人競技という性質や相手との実力差で相手を誘うハードルが高くなっていることが問題だと考え、このアプリを開発しました。

## DEMO

## 実装予定の内容
・チャット画面のユーザーアイコンから対戦申込
・マイページから対戦申込履歴閲覧
・試合予定日を超えた対戦履歴は相手ユーザーの評価ページへのリンクを出す
・ユーザー評価はフットワーク、スタミナ、サーブ、リターン、ボレー、フォア、バック、メンタルのステータスを1〜100の数値で評価し、マイページでレーダーチャートで表示する

## DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- belongs_to :usersstatus
- belongs_to :profile
- has_many :stamps
- has_many :users_groups
- has_many :groups, through: :users_groups
- has_many :traningartcles
- has_many :comments
- has_many :likes

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|age|string|null: false|
|gender|string|null: false|
|introduction|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## userstatusesテーブル
|Column|Type|Options|
|------|----|-------|
|rate|integer|null: false|
|footwork|integer||
|stamina|integer||
|service|integer||
|return|integer||
|volley|integer||
|forehand|integer||
|backhand|integer||
|mental|integer||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false|
|group_type|string|null: false|
### Association
- has_many :massages
- has_many :users_groups
- has_many :users, through: :users_groups

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|video|text||
### Association
- belongs_to :user
- belongs_to :group
- has_many :messages_stamps
- has_many :stamps, through: :messages_stamps

## stampsテーブル
|Column|Type|Options|
|------|----|-------|
|stamp|text||
### Association
- belongs_to :user
- has_many :messages_stamps
- has_many :message, through: :messages_stamps

## artcles
|Column|Type|Options|
|------|----|-------|
|title|text||
|text|text||
|image|text||
|video|text||
### Association
- belongs_to :user
- belongs_to :like
- has_many :comments


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text||
### Association
- belongs_to :user
- belongs_to :comment
- belongs_to :like

## likesテーブル
|Column|Type|Options|
|------|----|-------|
### Association
- belongs_to :user
- belongs_to :traningartcle
- belongs_to :comment

## users_groupsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null:false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group

## messages_stampsテーブル
|Column|Type|Options|
|------|----|-------|
|message_id|integer|null: false, foreign_key: true|
|stamp_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :message
- belongs_to :stamp
