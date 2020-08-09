class Artcle < ApplicationRecord
  validates :text, presence: true

  belongs_to  :user
  has_many    :comments
  has_many    :favorites

  mount_uploader  :image, ImageUploader

  def self.search(search)
    if search
      Artcle.where('text LIKE(?)', "%#{search}%")
    else
      Artcle.all
    end
  end
end
