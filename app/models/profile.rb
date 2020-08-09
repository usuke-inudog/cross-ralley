class Profile < ApplicationRecord
  validates :age, :gender, :introduction, :address, presence: true
  validates :introduction, length: { maximum: 1000 }

  belongs_to :user
  mount_uploader  :image, ImageUploader
end
