class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true, uniqueness: true
  has_many  :group_users
  has_many  :groups, through: :group_users
  has_many  :messages
  has_many  :artcles
  has_many  :comments
  has_many  :favorites
  has_one   :profile
  has_many  :matchings
  has_many  :userstatus
end
