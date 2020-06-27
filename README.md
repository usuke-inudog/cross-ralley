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

* DataBase
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- belongs_to :usersstatus
- has_many :stamps
- has_many :users_groups
- has_many :groups, through: :users_groups
- has_many :traningartcles
- has_many :comments
- has_many :likes

## userstatusesテーブル
|Column|Type|Options|
|------|----|-------|
|rate|integer|null: false|
|user_image|text||
|user_age|integer||
|user_sex|string||
|user_introduction|text||
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