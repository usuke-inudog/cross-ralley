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
  has_many  :likes
  has_one   :profile
  has_many  :match
  has_many  :userstatus

  def already_liked?(artcle)
    self.likes.exists?(artcle_id: artcle.id)
  end
end
