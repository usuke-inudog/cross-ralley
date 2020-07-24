class Profile < ApplicationRecord
  validates :age, :gender, :introduction, presence: true

  belongs_to :user
  mount_uploader  :image, ImageUploader
end
